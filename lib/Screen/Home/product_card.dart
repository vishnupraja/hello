import 'package:e_learning/Api/api.dart';
import 'package:e_learning/Helper/strings.dart';
import 'package:e_learning/Helper/style.dart';
import 'package:e_learning/Screen/Product/product_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../Api/constant.dart';
import '../../Model/GetCourseModel.dart';

class ProductCard extends StatefulWidget {
  final catTitle;

  // final typeCoursefeature;
  // final typeCoursesecond;
  // final typeCoursethird;
  // final typeCoursefourth;
  final GetCourseModel getCourse;

  // final GetCourseModel getCourseSecond;
  // final GetCourseModel getCourseThird;
  // final GetCourseModel getCourseFourth;

  const ProductCard({Key? key, this.catTitle, required this.getCourse})
      : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      height: h * .40,
      child: Column(
        children: [
          ListTile(
            title: Text(
              "${widget.catTitle}",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: widget.getCourse.data!.length,
              itemBuilder: (BuildContext context, int index) {
                print("$imageUrl${widget.getCourse.data![index].thumbnail}");
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductHomePage(
                                  courseId:
                                      widget.getCourse.data![index].id,
                                )));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: w * .7,
                      height: h * 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "${widget.getCourse.url}${widget.getCourse.data![index].thumbnail}"))),
                            ),
                          ),
                          Text(
                            "${widget.getCourse.data![index].title}",
                            style: Theme.of(context).textTheme.titleLarge,
                            maxLines: 2,
                          ),
                          Text(
                            "${widget.getCourse.data![index].shortDescription}",
                            style: Theme.of(context).textTheme.titleSmall,
                            maxLines: 1,
                          ),
                          Row(
                            children: [
                              Text(
                                  "${widget.getCourse.data![index].ratingCount}"),
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
                          Divider(),
                          Text(
                            "${double.parse(widget.getCourse.data![index].price.toString()).toStringAsFixed(2)}",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          Text(
                            "${widget.getCourse.data![index].level}",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Divider(
            thickness: 5,
          )
        ],
      ),
    );
  }
}
