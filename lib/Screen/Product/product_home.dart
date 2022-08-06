import 'package:e_learning/Api/constant.dart';
import 'package:e_learning/Helper/Provider/user_provider.dart';
import 'package:e_learning/Helper/strings.dart';
import 'package:e_learning/Helper/style.dart';
import 'package:e_learning/Model/GetLessonModel.dart';
import 'package:e_learning/Screen/LoginScreen/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import '../../Helper/constant.dart';
import '../../Model/Addtocart.dart';
import '../../Model/AddwishListModel.dart';
import '../../Model/GetCourseBuyModel.dart';
import '../../Model/GetSingleCourseModel.dart';
import '../LoginScreen/checkout.dart';
import '../LoginScreen/getwishlistdata.dart';
import '../LoginScreen/youtubeplayerdata.dart';

class ProductHomePage extends StatefulWidget {
  final courseId;

  const ProductHomePage({Key? key, this.courseId}) : super(key: key);

  @override
  State<ProductHomePage> createState() => _ProductHomePageState();
}

class _ProductHomePageState extends State<ProductHomePage> {
  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: appBar(""),
      body: ListView(
        children: [
          Image.asset("assets/images/demo.jpg"),
          //product Normal details
          Container(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FutureBuilder(
                    future: getSingleCourese("${widget.courseId}"),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        GetSingleCourseModel singleModel = snapshot.data;

                        return singleModel.status == false
                            ? Container()
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${singleModel.data![0].title}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "${singleModel.data![0].shortDescription}",
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "${singleModel.data![0].level}",
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                              "${singleModel.data![0].ratingCount}"),
                                          RatingBarIndicator(
                                            rating: 2.75,
                                            itemBuilder: (context, index) =>
                                                Icon(
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
                                            "${singleModel.data![0].metaKeywords}",
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
                                    "$currency ${double.parse(singleModel.data![0].price.toString()).toStringAsFixed(2)}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                  // Row(
                                  //   children: [
                                  //     Expanded(
                                  //         child: ElevatedButton(
                                  //             style: ButtonStyle(
                                  //                 backgroundColor:
                                  //                     MaterialStateProperty.all(
                                  //                         primary)),
                                  //             onPressed: () async {
                                  //               var purchaseType = "";
                                  //               var userId = "";
                                  //               var subTotal = "";
                                  //               var courseId = "";
                                  //               var totalItem = "";
                                  //               var pmethodId = "";
                                  //               var paymentStatus = "";
                                  //               GetCourseBuyModel? model =
                                  //                   await getCourseBuy(
                                  //                       purchaseType,
                                  //                       userId,
                                  //                       subTotal,
                                  //                       courseId,
                                  //                       totalItem,
                                  //                       pmethodId,
                                  //                       paymentStatus);
                                  //               if (model != null) {
                                  //                 Navigator.push(
                                  //                     context,
                                  //                     MaterialPageRoute(
                                  //                         builder: (context) =>
                                  //                             CheckOutData()));
                                  //               } else {
                                  //                 FlutterError.onError
                                  //                     .toString();
                                  //               }
                                  //             },
                                  //             child: Padding(
                                  //               padding:
                                  //                   const EdgeInsets.all(8.0),
                                  //               child: Text("BUY NOW"),
                                  //             ))),
                                  //   ],
                                  // ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: OutlinedButton(
                                            onPressed: () async {
                                              Addtocart? model =
                                                  await AddtoCart(
                                                      user.userId,
                                                      singleModel
                                                          .data![0].id);
                                              if (model != null) {
                                                showToast("${model.message}");
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            CartLists()));
                                              } else {
                                                FlutterError.onError.toString();
                                              }
                                            },
                                            child: Text("Add to Cart",
                                                style: TextStyle(
                                                    color: Colors.black))),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: OutlinedButton(
                                            onPressed: () async {
                                              AddwishListModel? model =
                                                  await addWishlist(
                                                      singleModel
                                                          .data![0].id,
                                                      user.userId);
                                              if (model != null) {
                                                showToast(model.message);
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            GetWishListData()));
                                              } else {}
                                            },
                                            child: Text("Add to Wishlist",
                                                style: TextStyle(
                                                    color: Colors.black))),
                                      ),
                                    ],
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
          //What you'll Learn

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
                  FutureBuilder(
                      future: getLession("${widget.courseId}"),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          GetLessonModel lessmodel = snapshot.data;

                          return lessmodel.status == false
                              ? Container(
                            child: Text("${lessmodel.message}"),
                          )    :
                           ListView.builder(
                            shrinkWrap: true,
                            physics: ClampingScrollPhysics(),
                            itemCount: lessmodel.data!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                leading: Text("${index + 1}"),
                                title: Text("${lessmodel.data![index].title}"),
                                trailing: Icon(Icons.play_circle_outline),
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) => SingleLesson(
                                  //           lessonId:
                                  //               lessmodel.data![index].id)),
                                  // );
                                  print(lessmodel.data![index].courseId);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => YouTubePlayerData(
                                            lessonId:
                                                lessmodel.data![index].id)),
                                  );
                                },
                              );
                            },
                          );
                        } else if (snapshot.hasError) {
                          return Icon(Icons.error_outline);
                        } else {
                          return Center(child: CircularProgressIndicator());
                        }
                      })
                ],
              ),
            ),
          ),

          //Description
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
