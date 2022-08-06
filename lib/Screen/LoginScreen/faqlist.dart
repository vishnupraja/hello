import 'package:e_learning/Screen/LoginScreen/faqdetials.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Api/constant.dart';
import '../../Model/GetAllFaqModel.dart';

class FAQList extends StatefulWidget {
  const FAQList({Key? key}) : super(key: key);

  @override
  State<FAQList> createState() => _FAQListState();
}

class _FAQListState extends State<FAQList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: getAllFaQ(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                GetAllFaqModel cat = snapshot.data;
                return  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      SizedBox(height: 10),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "FAQ",
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> FAQDetails(id: cat.data![index].id)));
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
    );;
  }
}
