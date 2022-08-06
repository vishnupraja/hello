import 'package:e_learning/Model/GetSingleFaqDetialModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Api/constant.dart';

class FAQDetails extends StatefulWidget {
  final id;
  const FAQDetails({Key? key,required this.id}) : super(key: key);

  @override
  State<FAQDetails> createState() => _FAQDetailsState();
}

class _FAQDetailsState extends State<FAQDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: getSingleFaqDetails(widget.id),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                GetSingleFaqDetialModel cat = snapshot.data;
                return  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      SizedBox(height: 10),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "FAQ Details",
                        style: TextStyle(
                            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                      ),

                      ListView.builder(
                        shrinkWrap: true,physics: ClampingScrollPhysics(),
                        itemCount: cat.data!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return  ListTile(
                            title: Text("${cat.data![index].title}"),
                            onTap: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=> QuizQuestion()));
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=> SingleQuiz(quizid: cat.data![index].id)));
                            },
                          );
                        },
                      ),
                    ],
                  ),
                );
              } else if (snapshot.hasError) {
                return Icon(Icons.error_outline);
              } else {
                return Center(child: CircularProgressIndicator());
              }
            })
    );
  }
}
