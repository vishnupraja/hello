import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../Helper/style.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("CategoryList"),
        actions: [
          TextButton(
              style: Theme.of(context).textButtonTheme.style,
              onPressed: () {},
              child: Text(
                "",
                style: Theme.of(context).textTheme.labelMedium,
              ))
        ],
      ),
      body: Container(
        // height: h * .50,
        child: Column(
          children: [
            Center(
              child: ListTile(
                title: Text(
                  "Category List",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(

                itemCount: 5,
                // scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductHomePage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(

                        // width: w * .7,
                        // height: h * 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                // https://alphawizztest.tk/E_Learning/storage/img/users/
                                // child: Image.network("${widget.getCourse.url}${widget.getCourse.data![index].thumbnail}",height: 120,width: 240,)),
                                child: Image.asset("assets/images/imagefour.png")),
                            // child: Image.network("${'https://alphawizztest.tk/E_Learning/api/uploads/'}${widget.getCourse.data![index].thumbnail}")),
                            Text("New Serice",
                              style: Theme.of(context).textTheme.titleLarge,
                              maxLines: 2,
                            ),
                            Text(
                              "description data",
                              style: Theme.of(context).textTheme.titleSmall,
                              maxLines: 1,
                            ),
                            Row(
                              children: [
                                Text("2"),
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
                              "Beginner",
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            // Text(
                            //   "Beginner",
                            //   style: Theme.of(context).textTheme.titleSmall,
                            // ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Divider(thickness: 5,)
          ],
        ),
      ),
    );
  }
}
