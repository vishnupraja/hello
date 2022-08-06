import 'package:e_learning/Api/constant.dart';
import 'package:e_learning/Helper/constant.dart';
import 'package:e_learning/Model/GetCourseModel.dart';
import 'package:e_learning/Screen/Home/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../Model/GetCategoryByIdModel.dart';

class Development extends StatefulWidget {
  final catId;

  const Development({Key? key, this.catId}) : super(key: key);

  @override
  State<Development> createState() => _DevelopmentState();
}

class _DevelopmentState extends State<Development> {
  List categories = [
    "Python",
    "Java",
    "JavaScript ",
    "Excel",
    "React",
    "Sql",
    "Php",
    "Aws",
    "C#",
    "Wordpress",
    "unity"
  ];
  List selectedCategories = [];
  List topic = [
    "Web Development",
    "Programming",
    "Data Science ",
    "Mobile Development",
    "Game Development",
    "Software Testing",
    "Software Engineering",
    "No-Code Development",
  ];
  List selectedTopic = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(""),
        body: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Courses to get you\nstarted",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              FutureBuilder(
                  future: getCategoryById(widget.catId),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      GetCategoryByIdModel cat = snapshot.data;
                      return Container(
                        height: 250,
                        child: ListView.builder(
                          itemCount: snapshot.data.data.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                        "${cat.url}${cat.data![index].thumbnail}",
                                        fit: BoxFit.cover,
                                      )),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 0, top: 15),
                                  child: Container(
                                    width: 200,
                                    child: Text(
                                      "${cat.data![index].description}",
                                      maxLines: 2,

                                      // overflow:TextOverflow.
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 0, top: 10),
                                  child: Text(
                                      "${cat.data![index].name}",
                                      textAlign: TextAlign.start),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 0, top: 5),
                                      child: Text(
                                        "4.5",
                                        style: TextStyle(
                                            color: Colors.amber,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 17,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 17,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 17,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 17,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 17,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 2, top: 5),
                                      child: Text(
                                        "(4,232)",
                                        style: TextStyle(),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                          // children: [
                          //
                          //   Padding(
                          //     padding: const EdgeInsets.only(left: 10, right: 20),
                          //     child: Center(
                          //         child: Text(
                          //           "See all",
                          //           style: TextStyle(
                          //               color: Colors.deepPurpleAccent,
                          //               fontSize: 20,
                          //               fontWeight: FontWeight.bold),
                          //         )),
                          //   )
                          // ],
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return Icon(Icons.error_outline);
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  }),
              FutureBuilder(
                  future: getCourse("1"),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      GetCourseModel getCourse = snapshot.data;
                      return ProductCard(
                        catTitle: "Features Category",
                        getCourse: getCourse,
                      );
                    } else if (snapshot.hasError) {
                      return Icon(Icons.error_outline);
                    } else {
                      return CircularProgressIndicator();
                    }
                  }),
              Text(
                "Popular topics",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Wrap(
                    spacing: 20,
                    children: categories
                        .asMap()
                        .entries
                        .map<Widget>((e) => InkWell(
                            onTap: () {
                              if (selectedCategories.contains(e.key)) {
                                setState(() {
                                  selectedCategories.remove(e.key);
                                });
                              } else {
                                setState(() {
                                  selectedCategories.add(e.key);
                                });
                              }
                            },
                            child: Chip(
                                side: BorderSide(width: 1, color: Colors.black),
                                backgroundColor:
                                    selectedCategories.contains(e.key)
                                        ? Colors.blue
                                        : Colors.transparent,
                                label: Text("${e.value}"))))
                        .toList(),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Subcategories",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Wrap(
                    spacing: 20,
                    children: topic
                        .asMap()
                        .entries
                        .map<Widget>((e) => InkWell(
                            onTap: () {
                              if (selectedTopic.contains(e.key)) {
                                setState(() {
                                  selectedTopic.remove(e.key);
                                });
                              } else {
                                setState(() {
                                  selectedTopic.add(e.key);
                                });
                              }
                            },
                            child: Chip(
                                side: BorderSide(width: 1, color: Colors.black),
                                backgroundColor: selectedTopic.contains(e.key)
                                    ? Colors.blue
                                    : Colors.transparent,
                                label: Text("${e.value}"))))
                        .toList(),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),

            ],
          ),
        ));
  }
}
