import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List categories = ["Development", "Office Productivity","Business ",  "It & Software", "Finance & Accounting", "Personal Development"];
  List selectedCategories = [];
  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Text(
                        "₹ 479.00",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                          color: Color(0XFFFFFF8F),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("BestSeller",
                                style: TextStyle(color: Colors.black)),
                          )
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Column(
                    children: [
                      Text(
                        "₹ 479.00",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                          color: Color(0XFFFFFF8F),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("BestSeller",
                                style: TextStyle(color: Colors.black)),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ListTile(
                title: Text(
                  "Categories",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  "See all ",
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Column(
              children: [
                Wrap(
                  spacing: 50,
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
                        side: BorderSide(
                          width: 1,
                          color: Colors.black
                        ),
                          backgroundColor: selectedCategories.contains(e.key)
                              ? Colors.blue
                              : Colors.transparent,

                          label: Text("${e.value}"))))
                      .toList(),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 15),
                  child: Text("Because you searched for",
                    style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold,fontSize: 15),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(" 'react'",
                    style: TextStyle(color: Colors.deepPurpleAccent,
                        fontWeight: FontWeight.bold,fontSize: 15),),
                )
              ],
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/in.png")),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 15),
                      child: Text(
                        "The source of your image is your choice. NetworkImage is only for",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold,fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Text("Kevin deLaplant", textAlign: TextAlign.start),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5),
                          child: Text("4.5",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(
                          width: 5  ,
                        ),
                        Icon(Icons.star,color: Colors.amber),
                        Icon(Icons.star,color: Colors.amber),
                        Icon(Icons.star,color: Colors.amber),
                        Icon(Icons.star,color: Colors.amber),
                        Icon(Icons.star,color: Colors.amber),

                        Padding(
                          padding: const EdgeInsets.only(left: 2, top: 5),
                          child: Text("(4,232)",style: TextStyle(),),
                        ),

                      ],
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 18, top: 5),
                    //   child: Text("(₹479.00)",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20),
                      child: Column(
                        children: [
                          Text(
                            "₹ 479.00",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5,top: 15,bottom: 20),
                            child: Container(
                                color: Color(0XFFFFFF8F),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("BestSeller",
                                      style: TextStyle(color: Colors.black)),
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
