import 'package:e_learning/Api/constant.dart';
import 'package:e_learning/Helper/constant.dart';
import 'package:e_learning/Helper/style.dart';
import 'package:e_learning/Screen/Quiz/quiz_sub_cat.dart';
import 'package:flutter/material.dart';

import '../../Model/GetAllQuizModel.dart';

class QuizHome extends StatefulWidget {
  const QuizHome({Key? key}) : super(key: key);

  @override
  State<QuizHome> createState() => _ProductState();
}

class _ProductState extends State<QuizHome> {
  @override
  Widget build(BuildContext context) {
    // @override
    // void initState() {
    //   // TODO: implement initState
    //   super.initState();
    //   categories = widget.cat.data!.map((e) => e.name).toList();
    // }

    return Scaffold(
        appBar: appBar('Quiz'),
        body: FutureBuilder(
            future: getAllQuiz(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                GetAllQuizModel cat = snapshot.data;
                return cat.status==false?Container(
                  child: Center(
                    child: Text("Something Went Wrong, No Data Found"),
                  ),
                ):
                  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: cat.data!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 5,
                        shadowColor: primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: ListTile(
                          trailing: Icon(Icons.arrow_forward_ios),
                          leading: CircleAvatar(child: Text("${index+1}") , backgroundColor: primary, radius: 15,),
                          title: Text("${cat.data![index].title}"),
                          onTap: () {
                            print(cat.data![index].id);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => QuizSubCategory(
                                          quizCatId: cat.data![index].id,
                                        )));
                          },
                        ),
                      );
                    },
                  ),
                );
              } else if (snapshot.hasError) {
                return Icon(Icons.error_outline);
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }));
  }
}
