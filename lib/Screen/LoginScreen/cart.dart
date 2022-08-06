import 'package:e_learning/Api/constant.dart';
import 'package:e_learning/Helper/Provider/user_provider.dart';
import 'package:e_learning/Helper/constant.dart';
import 'package:e_learning/Helper/strings.dart';
import 'package:e_learning/Helper/style.dart';
import 'package:e_learning/Model/RemoveCart.dart';
import 'package:e_learning/Screen/LoginScreen/checkout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Model/GetCartModel.dart';

class CartLists extends StatefulWidget {
  const CartLists({Key? key}) : super(key: key);

  @override
  State<CartLists> createState() => _CartListsState();
}

class _CartListsState extends State<CartLists> {
  removeFromCart(userId, courseId) async {
    RemoveCart? model = await removeCart(userId, courseId);
    if (model!.status == true) {
      showToast(model.message);
      setState(() {});
    } else {
      showToast(model.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserProvider>(context);
    showRemoveDialog(courseId) {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Are you sure?"),
              content:
                  Text("If your confirm , the course will be remove from cart"),
              actions: [
                TextButton(
                    onPressed: () {
                      removeFromCart(user.userId, courseId);
                      Navigator.pop(context);
                    },
                    child: Text("Confirm")),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel")),
              ],
            );
          });
    }

    return Scaffold(
        appBar: appBar("Checkout"),
        body: FutureBuilder(
            future: getCart("${user.userId}"),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                var total = 0.0;
                GetCartModel cart = snapshot.data;
                if (cart.status == true) {
                  List rsList = cart.data!
                      .map((e) => double.parse(e.price.toString()))
                      .toList();
                  print(rsList);

                  for (var i = 0; i < rsList.length; i++) {
                    total = total + rsList[i];
                    print(total);
                  }
                }
                return cart.status == false
                    ? Container(
                        child: Center(child: Text("No Course Added")),
                      )
                    : Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: ClampingScrollPhysics(),
                              itemCount: cart.data!.length,
                              itemBuilder: (BuildContext context, int index) {
                                return ListTile(
                                  title: Text(
                                    "${cart.data![index].title}",
                                    maxLines: 1,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    "${cart.data![index].metaDescription}",
                                    maxLines: 2,
                                  ),
                                  trailing: cart.data![index].price == null
                                      ? Text("")
                                      : Column(
                                          children: [
                                            Expanded(
                                                child: IconButton(
                                                    onPressed: () {
                                                      showRemoveDialog(cart
                                                          .data![index].cartId);
                                                    },
                                                    icon: Icon(Icons.clear))),
                                            Text(
                                                "$currency ${double.parse(cart.data![index].price.toString()).toStringAsFixed(2)}"),
                                          ],
                                        ),
                                );
                              },
                            ),
                          ),
                          Divider(),
                          ListTile(
                            title: Text(
                              "Total",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("$currency $total"),
                            trailing: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(primary)),
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CheckOutData()),
                                    (route) => false);
                              },
                              child: Text("Check Out"),
                            ),
                          )
                        ],
                      );
              } else if (snapshot.hasError) {
                return Icon(Icons.error_outline);
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }));
  }
}
