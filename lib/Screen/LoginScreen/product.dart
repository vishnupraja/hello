import 'package:e_learning/Api/constant.dart';
import 'package:flutter/material.dart';

import '../../Model/GetCategoryModel.dart';
import 'development.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
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

  @override
  Widget build(BuildContext context) {
    // @override
    // void initState() {
    //   // TODO: implement initState
    //   super.initState();
    //   categories = widget.cat.data!.map((e) => e.name).toList();
    // }

    return Scaffold(
        body: FutureBuilder(
            future: getCategory(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                GetCategoryModel cat = snapshot.data;
                return  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      SizedBox(height: 10),
                      TextField(
                        onChanged: (value) {
                          setState(() {});
                        },
                        decoration: InputDecoration(
                          // labelText: "Search",
                            hintText: "Search",
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(40.0)))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Top Searched",
                        style: TextStyle(
                            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
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
                                    backgroundColor: selectedCategories.contains(e.key)
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
                        "Browse categories",
                        style: TextStyle(
                            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                      ),

                      ListView.builder(
                        shrinkWrap: true,physics: ClampingScrollPhysics(),
                        itemCount: cat.data!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return  ListTile(
                            leading: Icon(Icons.developer_board),
                            title: Text("${cat.data![index].name}"),
                            trailing: Icon(Icons.arrow_forward_ios),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Development(catId:
                              cat.data![index].id)));
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
