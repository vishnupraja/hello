import 'dart:async';
import 'package:flutter/material.dart';

import 'WelcomeScreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => WelcomeScreen(),
                )));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.greenAccent,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/spl.png',
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child: Image.asset("assets/images/sp.png", width: 180),
              ),
              Padding(
                  padding: EdgeInsets.only(
                    right: 30,
                  )),
              Container(
                child: Image.asset(
                  "assets/images/spx.png",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
