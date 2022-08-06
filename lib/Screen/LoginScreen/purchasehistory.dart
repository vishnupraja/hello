import 'package:e_learning/Screen/LoginScreen/youtubeplayerdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../Api/constant.dart';
import '../../Helper/strings.dart';
import '../../Helper/style.dart';
import '../../Model/Addtocart.dart';
import '../../Model/AddwishListModel.dart';
import '../../Model/GetCourseBuyModel.dart';
import '../../Model/GetLessonModel.dart';
import '../../Model/GetSingleCourseModel.dart';
import 'cart.dart';
import 'checkout.dart';
import 'getwishlistdata.dart';

class PurchaseHistory extends StatefulWidget {
  const PurchaseHistory({Key? key}) : super(key: key);

  @override
  State<PurchaseHistory> createState() => _PurchaseHistoryState();
}

class _PurchaseHistoryState extends State<PurchaseHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: ListView(
        children: [
          Image.asset("assets/images/demo.jpg"),
          Container(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FutureBuilder(
                    future: getSingleCourese("2"),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        GetSingleCourseModel singlmodel = snapshot.data;

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${singlmodel.data![0].title}",
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${singlmodel.data![0].shortDescription}",
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${singlmodel.data![0].level}",
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("${singlmodel.data![0].ratingCount}"),
                                    RatingBarIndicator(
                                      rating: 2.75,
                                      itemBuilder: (context, index) => Icon(
                                        Icons.star,
                                        color: primary,
                                      ),
                                      itemCount: 5,
                                      itemSize: 10.0,
                                      direction: Axis.horizontal,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.language),
                                    Text(
                                      "${singlmodel.data![0].metaKeywords}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.timeline),
                                    Text(
                                      "Last Updated",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${double.parse(singlmodel.data![0].price.toString()).toStringAsFixed(2)}",
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ],
                        );
                      } else if (snapshot.hasError) {
                        return Icon(Icons.error_outline);
                      } else {
                        return Center(
                            child: Center(child: CircularProgressIndicator()));
                      }
                    })),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                dense: true,
                leading: Icon(Icons.check),
                title: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              );
            },
          ),
          //Curriculum
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "CIRRICULUM",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
