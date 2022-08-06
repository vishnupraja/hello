import 'package:e_learning/Screen/Splash/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../Product/product_home.dart';

class ProductListTitle extends StatefulWidget {
  const ProductListTitle({Key? key}) : super(key: key);

  @override
  State<ProductListTitle> createState() => _ProductListTitleState();
}

class _ProductListTitleState extends State<ProductListTitle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // 1
        elevation: 0,
        centerTitle: true,
        title: Text("", textAlign: TextAlign.center),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text('All Courses',
            style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.normal,
              color: Colors.black
            ),),
          ),
// Container(
//
// )
    Container(
height: MediaQuery.of(context).size.height,
        child:  ListView.builder(
        itemCount: 15,
          itemBuilder: (context,index){
          return ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductHomePage()));
            },

            // onTap: (){
            //   Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashScren()));
            // },
            // leading: Icon(Icons.account_balance),
            leading: Image.asset("assets/images/imageone.png", height: 40,width: 40),
            title: Text("2022 Complete python Bootcamp From Zero to Hero in Python",style: TextStyle(
                fontSize: 12,fontWeight: FontWeight.bold,
                color: Colors.black
            ),),


            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Jose Portilla'),
                SizedBox(
                  height: 5,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: "4.6 ",
                        style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold)),
                    WidgetSpan(child:  RatingBar.builder(
                      itemSize: 15,
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 0.4),
                      itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    )),
                    TextSpan(
                      text: " (412,573)",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 5,
                ),

                Text('₹ 479.00', style: TextStyle(
                    fontSize: 16,fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),

              ],

            ),

            selectedTileColor:Colors.green[400],
            // onTap: () {
            //   setState(() {
            //
            //   });
            // },
          );
          })
    )




          ],

        ),
      ),
      
      
    );
  }
}
