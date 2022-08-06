import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedsData extends StatefulWidget {
  const FeedsData({Key? key}) : super(key: key);

  @override
  State<FeedsData> createState() => _FeedsDataState();
}

class _FeedsDataState extends State<FeedsData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // 1
        elevation: 0,
        centerTitle: true,
        title: Text("Welcom back!", textAlign: TextAlign.center),
      ),
      body:
      Container(
        margin: EdgeInsets.only(bottom: 10.0),
        child: ListView.builder(
          itemCount: 2, itemBuilder: (BuildContext context, int index) {
          return    Container(
            margin: EdgeInsets.only(bottom: 10.0),
            child: ListTile(
              // title:  Text('ListTile with red background'),
              // trailing: Icon(Icons.arrow_forward_ios),
              title: Image.asset("assets/images/demo.jpg"),
              subtitle:Text('Full Descriptions',style: TextStyle(fontSize: 20),),

              //tileColor: Colors.white,

            ),
          );
        },),
      ),



    );
  }
}
