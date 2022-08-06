import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../../Api/constant.dart';
import '../../Helper/Provider/user_provider.dart';
import '../../Helper/constant.dart';
import '../../Helper/strings.dart';
import '../../Helper/style.dart';
import '../../Model/GetCartModel.dart';
import 'couponlist.dart';

class CheckOutData extends StatefulWidget {
  final couponId, couponDiscount, couponCode;

  const CheckOutData(
      {Key? key, this.couponId, this.couponDiscount, this.couponCode})
      : super(key: key);

  @override
  State<CheckOutData> createState() => _CheckOutDataState();
}

class _CheckOutDataState extends State<CheckOutData> {
  late Razorpay _razorpay;

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserProvider>(context);
    var total;
    double productvalue;
    double? percentage = 00;
    double? disPrice;
    print(
        "copuponcode::::${widget.couponId} couponDiscount::::${widget.couponDiscount}couponCode::::${widget.couponCode}");

    return Scaffold(
        appBar: appBar("Checkout"),
        body: FutureBuilder(
            future: getCart("${user.userId}"),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                total = 0.0;

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
                  productvalue = total;
                  if (widget.couponDiscount != null) {
                    print("Coupon discount : ${widget.couponDiscount}");
                    percentage =
                        (productvalue * double.parse(widget.couponDiscount)) /
                            100;
                    disPrice = (productvalue - percentage!);
                    // setState(() {
                    //   getCartBloc.getCartSink(userID);
                    // });
                  } else {
                    disPrice = productvalue;
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
                                            Text(
                                                "$currency ${double.parse(cart.data![index].price.toString()).toStringAsFixed(2)}"),
                                          ],
                                        ),
                                );
                              },
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Product Price $currency $total",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                                "Discount $currency ${percentage.toString()}"),
                            trailing: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(primary)),
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CouponList()),
                                    (route) => false);
                              },
                              child: Text("Coupons"),
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "PAYMENT TYPE",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              print("COD Click");
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionAnswerHome()));
                            },
                            title: Text(
                              "COD",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              openCheckout(disPrice!);
                              // print("Online Click");
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionAnswerHome()));
                            },
                            title: Text(
                              "ONLINE",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Divider(),
                          ListTile(
                            title: Text(
                              "Final Total",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("$currency $disPrice"),
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

  void openCheckout(double amount) async {
    var options = {
      'key': 'rzp_test_NNbwJ9tmM0fbxj',
      'amount': amount * 100,
      'name': 'Rahul',
      'description': 'Payment',
      'prefill': {
        'contact': '9753717525',
        'email': 'rahulrajalphawizz@gmail.com'
      },
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      // debugPrint(e);
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Fluttertoast.showToast(
    //     msg: "SUCCESS: " + response.paymentId, timeInSecForIos: 4);
    Fluttertoast.showToast(msg: "SUCCESS: ");
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Fluttertoast.showToast(
    //     msg: "ERROR: " + response.code.toString() + " - " + response.message,
    //     timeInSecForIos: 4);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Fluttertoast.showToast(
    //     msg: "EXTERNAL_WALLET: " + response.walletName, timeInSecForIos: 4);
  }
}
