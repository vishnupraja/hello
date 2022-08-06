import 'package:e_learning/Api/constant.dart';
import 'package:e_learning/Helper/style.dart';
import 'package:e_learning/Model/GetAllPostModel.dart';
import 'package:e_learning/Screen/Question_Answer/add_ques_ans.dart';
import 'package:e_learning/Screen/Question_Answer/show_all_answer.dart';
import 'package:flutter/material.dart';

class QuestionAnswerHome extends StatefulWidget {
  const QuestionAnswerHome({Key? key}) : super(key: key);

  @override
  State<QuestionAnswerHome> createState() => _QuestionAnswerHomeState();
}

class _QuestionAnswerHomeState extends State<QuestionAnswerHome> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: Text("Q&A"),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Posted",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton.small(
        backgroundColor: Colors.black,
        onPressed: () async {
          var data = await Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddQuesAnsPage()));
          if (data == true) {
            setState(() {});
          }
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: FutureBuilder(
          future: getAllPost(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              GetAllPostModel data = snapshot.data;
              return ListView.builder(
                itemCount: data.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Text(
                              "${data.data![index].username.toString().toUpperCase()[0]}"),
                        ),
                        title: Text("${data.data![index].username}"),
                        subtitle: Text("${data.data![index].createdAt}"),
                      ),
                      Container(
                        width: w,
                        height: h * .35,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: NetworkImage(
                                    "${data.url}${data.data![index].prodImg}"))),
                        child: data.data![index].prodImg == ""
                            ? Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.error,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Something Went Wrong",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              )
                            : Container(),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: TextButton.icon(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          ShowAllAnswer(
                                            image: "${data.url}${data.data![index].prodImg}",
                                            des: "${data.data![index].title}",
                                            id: "${data.data![index].id}",
                                          )));
                            },
                            label: Text(
                              "Show Answers",
                              style: TextStyle(color: Colors.black),
                            ),
                            icon: Icon(
                              Icons.comment,
                              color: Colors.black,
                            ),
                          )),
                          Expanded(
                              child: TextButton.icon(
                            onPressed: () {},
                            label: Text(
                              "Your Answers",
                              style: TextStyle(color: Colors.black),
                            ),
                            icon: Icon(
                              Icons.comment,
                              color: Colors.black,
                            ),
                          )),
                        ],
                      ),
                      Divider()
                    ],
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Icon(Icons.error_outline);
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
