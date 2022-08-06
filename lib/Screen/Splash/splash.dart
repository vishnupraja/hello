import 'dart:async';
import 'package:e_learning/landing.dart';
import 'package:flutter/material.dart';

import '../LoginScreen/feeds.dart';
import '../LoginScreen/getpicturescreen.dart';
import '../Auth/loginscreenfield.dart';
import '../LoginScreen/purchasehistory.dart';
import '../Auth/signUp_type.dart';
import '../dashboard.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-LEARNING',
      theme: ThemeData(
        backgroundColor: Color(0Xff259042),
      ),
      home: MySplshScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MySplshScreen extends StatefulWidget {
  @override
  _MySplshScreen createState() => _MySplshScreen();
}

class _MySplshScreen extends State<MySplshScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>
                    // NewScreen()
                    // CreateAccount()
                    // DashBoardPage()
                // TakePictureScreen()
                // FeedsData()
                LandingPage()
                // PurchaseHistory()
                // YouTubePlayerData()
                // VimeoPlayer(videoId: '70591644')
                // LoginScreenField()
                // IntroSliderFirst()
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        alignment: Alignment.center,
        // height: MediaQuery.of(context).size.height * 0.1,
        // width: MediaQuery.of(context).size.width,
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              'assets/images/sp.png',
              // width: 280,
              height: MediaQuery.of(context).size.height ,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Center(child: Image.asset("assets/images/sss.png",height: 80
              ,))

          ],
        ),


      ),

    );
  }
}
