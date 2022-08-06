import 'package:e_learning/Api/constant.dart';
import 'package:e_learning/Helper/constant.dart';
import 'package:e_learning/Screen/LoginScreen/development.dart';
import 'package:flutter/material.dart';

import '../../Model/GetCategoryModel.dart';

class MyCourse extends StatefulWidget {
  const MyCourse({Key? key}) : super(key: key);

  @override
  State<MyCourse> createState() => _MyCourseState();
}

class _MyCourseState extends State<MyCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar("All Courses"),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.perm_media_sharp,
                  size: 90,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.video_call,
                  size: 80,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Text(
                "What will You learn first?",
                style: TextStyle(color: Colors.black, fontSize: 25),
              )),
              Center(
                  child: Text(
                "Your course will go here ",
                style: TextStyle(color: Colors.black26, fontSize: 15),
              )),
              SizedBox(
                height: 40,
              ),
              Text(
                "Browse categories",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              FutureBuilder(
                  future: getCategory(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      GetCategoryModel category = snapshot.data;
                      return ListView.builder(
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          itemCount: category.data!.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              leading: Icon(Icons.developer_board),
                              title: Text("${category.data![index].name}"),
                              trailing: Icon(Icons.arrow_forward_ios),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Development(
                                            catId: category.data![index].id)));
                              },
                            );
                          });
                    } else if (snapshot.hasError) {
                      return Icon(Icons.error_outline);
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  })
            ],
          ),
        ));
  }
}
