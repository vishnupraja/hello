import 'package:e_learning/Api/constant.dart';
import 'package:e_learning/Helper/constant.dart';
import 'package:e_learning/Helper/style.dart';
import 'package:e_learning/Screen/Quiz/quizquestion.dart';

import 'package:flutter/material.dart';

import '../../Model/GetSubQuizModel.dart';

class QuizSubCategory extends StatefulWidget {
  final quizCatId;

  const QuizSubCategory({Key? key, this.quizCatId}) : super(key: key);

  @override
  State<QuizSubCategory> createState() => _QuizSubCategoryState();
}

class _QuizSubCategoryState extends State<QuizSubCategory> {
  noData() {
    Navigator.pop(context);
    showToast("No Data Found");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar("Quiz Topics"),
        body: FutureBuilder(
            // future: getSubQuiz("${widget.quizCatId}"),
            future: getSubQuiz(widget.quizCatId),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                GetSubQuizModel cat = snapshot.data;
                cat.status == false ? noData() : print("");
                return cat.status == false
                    ? Container()
                    : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          itemCount: cat.data!.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: ListTile(
                                title: Text("${cat.data![index].name}"),
                                leading: CircleAvatar(
                                  backgroundColor: primary,
                                  radius: 15,
                                  child: Text("${index+1}"),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => QuizQuestion(id: cat.data![index].id)));
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
