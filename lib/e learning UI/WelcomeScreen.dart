import 'package:flutter/material.dart';

import 'Login.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF9D3B9),
        body:SingleChildScrollView(
          child:  InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) =>Login() ));
            },
            child:  Column(
              children: [
                SizedBox(height:35),
                Image.asset("assets/images/sp.png",height: 100,width:120,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25,),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: (Center(
                                child: (Image.asset(
                                  'assets/images/men.png',
                                  height: 40,
                                )))),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 60,
                          width: 250,

                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                "assets/images/icon.png",
                                height: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 200,
                                child: Text(
                                  "To Become Creative & \nTechnically Strong Engineers.",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(left: 40
                    ),
                      child:  Image.asset("assets/images/line.png",height: 30,),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: (Center(
                                child: (Image.asset(
                                  'assets/images/mono.png',
                                  height: 40,
                                )))),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 60,
                          width: 250,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                "assets/images/icon.png",
                                height: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                  "Committed to Quality of \n Product.")
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(left: 40
                    ),
                      child:  Image.asset("assets/images/line.png",height: 30,),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: (Center(
                                child: (Image.asset(
                                  'assets/images/mono2.png',
                                  height: 40,
                                )))),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 60,
                          width: 250,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                "assets/images/icon.png",
                                height: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                  "Nominal & Affordable Cost.")
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(left: 40
                    ),
                      child:  Image.asset("assets/images/line.png",height: 30,),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: (Center(
                                child: (Image.asset(
                                  'assets/images/mono3.png',
                                  height: 40,
                                )))),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 60,
                          width: 250,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                "assets/images/icon.png",
                                height: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 200,
                                child: Text(
                                  "e_learning any where any time \n(walk the talk)",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(left: 40
                    ),
                      child:  Image.asset("assets/images/line.png",height: 30,),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0,bottom: 13),
                          child: Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: (Center(
                                child: (Image.asset(
                                  'assets/images/mono4.png',
                                  height: 40,
                                )))),
                          ),
                        ),
                        SizedBox(

                          width: 10,
                        ),
                        Container(
                          height: 60,
                          width: 250,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                "assets/images/icon.png",
                                height: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                  "Save Environment."),
                            ],
                          ),
                        )
                      ],
                    ),


                  ],
                )


              ],
            ),
          ),
        )


    );
  }
}
