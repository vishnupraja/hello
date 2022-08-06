import 'package:flutter/material.dart';

import '../../Api/constant.dart';
import '../../Model/GetAllCouponModel.dart';
import 'checkout.dart';

class CouponList extends StatefulWidget {
  const CouponList({Key? key}) : super(key: key);

  @override
  State<CouponList> createState() => _CouponListState();
}

class _CouponListState extends State<CouponList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Container(
    child: FutureBuilder(
    future: getAllCoupon(),
    builder: (BuildContext context, AsyncSnapshot snapshot) {
    if (snapshot.hasData) {
      GetAllCouponModel data = snapshot.data;
    return ListView.builder(
    shrinkWrap: true,
    physics: ClampingScrollPhysics(),
    itemCount: snapshot.data.data.length,
    itemBuilder: (context, index){
    return Card(
    child: InkWell(
    onTap: (){
    Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (context) =>
    // CheckOutData()
        CheckOutData(couponId: data.data![index].id,
                     couponDiscount:data.data![index].discount,
                     couponCode: data.data![index].code)
    //     CheckOutData(
    // couponId: data.data![index].id,
    // couponDiscount: data.data![index].cDiscount,
    // couponName: data.data![index].cName,
    // )

    ),);
    },
    child: ListTile(
    title: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
    Card(
    color: Colors.red,
    child: Padding(
    padding: const EdgeInsets.all(5.0),
    child: Text("${data.data![index].code}",
    style: TextStyle(
    color: Colors.white,
    fontSize: 15,
    ),
    ),
    ),
    ),
    SizedBox(height: 5.0,),
    Text("${data.data![index].discount} %Off",
    style: TextStyle(
    fontSize: 12,
    ),
    ),
    SizedBox(height: 5.0,),
    Text("Validity: ${data.data![index].createdAt} To ${data.data![index].updatedAt}",
    style: TextStyle(
    fontSize: 12,
    ),
    ),
    SizedBox(height: 5.0,),
    Text("Time: ${data.data![index].validTill}",
    style: TextStyle(
    fontSize: 12,
    ),
    ),
    ],
    ),
    trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
    ),
    ),
    );
    },
    );
    } else if (snapshot.hasError) {
    return Icon(Icons.error_outline);
    } else {
    return Center(child: CircularProgressIndicator());
    }
    }),
    ),

    );
  }
}
