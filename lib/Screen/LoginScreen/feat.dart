import 'package:flutter/material.dart';

class Feat extends StatefulWidget {
  const Feat({Key? key}) : super(key: key);

  @override
  State<Feat> createState() => _FeatState();
}

class _FeatState extends State<Feat> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: [
          Image.asset("assets/images/surendra.png"),
          Padding(
            padding: const EdgeInsets.only(left: 18,top: 15),
            child: Text(
              "Great Saving for a bright future",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,top: 15),
            child: Text(
                "If you are connected but behind a firewall\ncheck that Firefox has permission to access the Web."),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,top: 15),
            child: Text(
              "Featured",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("assets/images/index.png")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 15),
                    child: Text(
                      "The source of your image is your choice. NetworkImage is only for",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold,fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Text("Kevin deLaplant", textAlign: TextAlign.start),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: Text("4.5",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(
                        width: 5  ,
                      ),

                      Icon(Icons.star,color: Colors.amber),
                      Icon(Icons.star,color: Colors.amber),
                      Icon(Icons.star,color: Colors.amber),
                      Icon(Icons.star,color: Colors.amber),
                      Icon(Icons.star,color: Colors.amber),

                      Padding(
                        padding: const EdgeInsets.only(left: 2, top: 5),
                        child: Text("(4,232)",style: TextStyle(),),
                      ),

                    ],
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 18, top: 5),
                  //   child: Text("(₹479.00)",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20),
                    child: Column(
                      children: [
                        Text(
                          "₹ 479.00",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5,top: 15,bottom: 20),
                          child: Container(
                              color: Color(0XFFFFFF8F),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("BestSeller",
                                    style: TextStyle(color: Colors.black)),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
