import 'package:e_learning/Helper/Provider/user_provider.dart';
import 'package:e_learning/Helper/constant.dart';
import 'package:e_learning/Model/AddwishListModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

import '../../Api/constant.dart';
import '../../Model/GetWishlistModel.dart';

class GetWishListData extends StatefulWidget {
  const GetWishListData({Key? key}) : super(key: key);

  @override
  State<GetWishListData> createState() => _GetWishListDataState();
}

class _GetWishListDataState extends State<GetWishListData> {
  remove(courseId, userId) async {
    AddwishListModel? model = await addWishlist(courseId, userId);
    if (model!.status == true) {
      showToast("${model.message}");
      setState(() {

      });
    }else{
      showToast("${model.message}");
      setState(() {

      });
    }
  }
  removeFromWishDialog(courseId , userId) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Are you sure?"),
            content: Text("This course will be removed from wishlists"),
            actions: [
              TextButton(onPressed: () {
                remove(courseId, userId);
                Navigator.pop(context);
              }, child: Text("Confirm")),
              TextButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text("Cancel")),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserProvider>(context);
    return Scaffold(
        appBar: appBar("Wishlists"),
        body: FutureBuilder(
            future: getWishList(user.userId),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                GetWishlistModel wish = snapshot.data;
                // return wish.status == false
                return wish.status == false
                    ? Center(
                  child: Container(
                    child: Text("${wish.message}"),
                  ),
                )
                                  : ListView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: wish.data!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  title: Text("${wish.data![index].title}"),
                                  subtitle: Text(
                                    "${wish.data![index].shortDescription}",
                                    maxLines: 2,
                                  ),
                                  trailing: IconButton(
                                    onPressed: () {
                                      removeFromWishDialog(wish.data![index].courseId, user.userId);
                                    },
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ),
                              Divider()
                            ],
                          );
                        },
                      );
              } else if (snapshot.hasError) {
                return Icon(Icons.error_outline);
              } else {
                return Center(child: CircularProgressIndicator());
              }
            })
        // body:
        );
  }
}
