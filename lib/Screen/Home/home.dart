import 'package:badges/badges.dart';
import 'package:e_learning/Api/constant.dart';
import 'package:e_learning/Helper/Provider/user_provider.dart';
import 'package:e_learning/Helper/constant.dart';
import 'package:e_learning/Helper/style.dart';
import 'package:e_learning/Model/GetCategoryModel.dart';
import 'package:e_learning/Screen/Home/product_card.dart';
import 'package:e_learning/Screen/Home/product_cardnew.dart';
import 'package:e_learning/Screen/LoginScreen/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Model/GetCourseModel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    var user = Provider.of<UserProvider>(context);
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: w * .18,
                  height: h * .12,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Text(
                    "D",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("User Name"),
                      Text("Email"),
                      Text("Phone"),
                      TextButton.icon(
                        onPressed: () {},
                        label: Text("View Profile"),
                        icon: ImageIcon(AssetImage("assets/icon/profile.png")),
                      )
                    ],
                  ),
                )
              ],
            )),
            Expanded(
              child: ListView(
                children: [
                  DrawerTile(
                    image: "assets/icon/dHome.png",
                    title: "Home",
                  ),
                  DrawerTile(
                    image: "assets/icon/subscription.png",
                    title: "Subscription",
                  ),
                  DrawerTile(
                    image: "assets/icon/library.png",
                    title: "Library",
                  ),
                  DrawerTile(
                    image: "assets/icon/blogs.png",
                    title: "Blogs",
                  ),
                  DrawerTile(
                    image: "assets/icon/support.png",
                    title: "Support",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: primary,
        elevation: 0,
        title: Text("App Name"),
        actions: [
          FutureBuilder(
              future: getCart("${user.userId}"),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return snapshot.data.status == false
                      ? IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CartLists()));
                          },
                          icon: Icon(Icons.shopping_cart_sharp))
                      : IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CartLists()));
                          },
                          icon: Badge(
                              badgeColor: Colors.white,
                              badgeContent:
                                  Text("${snapshot.data.data.length}"),
                              child: Icon(Icons.shopping_cart_sharp)));
                } else if (snapshot.hasError) {
                  return Icon(Icons.error_outline);
                } else {
                  return Icon(Icons.shopping_cart_sharp);
                }
              })
        ],
      ),
      body: FutureBuilder(
          future: Future.wait([
            getCategory(),
            getCourse("1"),
            getCourse("2"),
            getCourse("3"),
            getCourse("4")
          ]),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              GetCategoryModel cat = snapshot.data[0];
              GetCourseModel getCourse = snapshot.data[1];
              GetCourseModel getCourseSecond = snapshot.data[2];
              GetCourseModel getCourseThird = snapshot.data[3];
              GetCourseModel getCourseFourth = snapshot.data[4];
              return ListView(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image.asset("assets/images/demo.jpg"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Great Saving For A Bright Futures",
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        )
                      ],
                    ),
                  ),
                  //Popular Section
                  getCourse.status == false
                      ? Container()
                      : ProductCard(
                          catTitle: "Features Category",
                          getCourse: getCourse,
                        ),
                  cat.status == false
                      ? Container()
                      : ProductCardNew(
                          catTitle: "Categories",
                          cat: cat,
                        ),
                  getCourseSecond.status == false
                      ? Container()
                      : ProductCard(
                          catTitle: "Popular Category",
                          getCourse: getCourseSecond,
                        ),
                  getCourseThird.status == false
                      ? Container()
                      : ProductCard(
                          catTitle: "For you",
                          getCourse: getCourseThird,
                        ),
                  getCourseFourth.status == false
                      ? Container()
                      : ProductCard(
                          catTitle: "BestSeller Courses",
                          getCourse: getCourseFourth,
                        ),
                ],
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

class DrawerTile extends StatelessWidget {
  final image;
  final title;
  final onTap;
  const DrawerTile({Key? key, this.image, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: ImageIcon(AssetImage("$image")),
      title: Text("$title"),
    );
  }
}

