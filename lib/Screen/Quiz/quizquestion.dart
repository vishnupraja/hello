import 'package:e_learning/Helper/constant.dart';
import 'package:e_learning/Helper/style.dart';
import 'package:flutter/material.dart';

import '../../Api/constant.dart';
import '../../Model/GetQuizModel.dart';

class QuizQuestion extends StatefulWidget {
  final id;
  const QuizQuestion({Key? key, this.id}) : super(key: key);

  @override
  State<QuizQuestion> createState() => _QuizQuestionState();
}

class _QuizQuestionState extends State<QuizQuestion> {
  var complete = false;
  List ansGroup = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar("Quiz"),
        body: FutureBuilder(
            future: getQuiz(widget.id),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                GetQuizModel cat = snapshot.data;
                return cat.status == false
                    ? Container()
                    : PageView.builder(
                        itemCount: cat.data!.length,
                        itemBuilder: (context, int) {
                          var data = cat.data![int];
                          if (!complete) {
                            ansGroup = cat.data!
                                .asMap()
                                .entries
                                .map((e) => "data${e.key}")
                                .toList();
                            complete = true;
                            print(ansGroup);
                          } else {
                            print("hey");
                          }

                          return ListView(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: primary,
                                  radius: 15,
                                  child: Text('${int + 1}'),
                                ),
                                title: Text("${data.title}"),
                              ),
                              Card(
                                child: RadioListTile(
                                    title: Text("${data.option1}"),
                                    value: "${data.option1}",
                                    groupValue: ansGroup[int],
                                    onChanged: (val) {
                                      setState(() {
                                        ansGroup[int] = val;
                                      });
                                    }),
                              ),
                              Card(
                                child: RadioListTile(
                                    title: Text("${data.option2}"),
                                    value: "${data.option2}",
                                    groupValue: ansGroup[int],
                                    onChanged: (val) {
                                      setState(() {
                                        ansGroup[int] = val;
                                      });
                                    }),
                              ),
                              Card(
                                child: RadioListTile(
                                    title: Text("${data.option3}"),
                                    value: "${data.option3}",
                                    groupValue: ansGroup[int],
                                    onChanged: (val) {
                                      setState(() {
                                        ansGroup[int] = val;
                                      });
                                    }),
                              ),
                              Card(
                                child: RadioListTile(
                                    title: Text("${data.option4}"),
                                    value: "${data.option4}",
                                    groupValue: ansGroup[int],
                                    onChanged: (val) {
                                      setState(() {
                                        ansGroup[int] = val;
                                      });
                                    }),
                              ),
                            ],
                          );
                        });
              } else if (snapshot.hasError) {
                return Icon(Icons.error_outline);
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }));
  }
}
