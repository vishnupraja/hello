// import 'package:exam_runner_up/QualificationDetails.dart';
// import 'package:exam_runner_up/Personal Details.dart';
// import 'package:exam_runner_up/Results_Career.dart';
// import 'package:exam_runner_up/forget_password.dart';
import 'package:flutter/material.dart';

import 'Splashscreen.dart';
// import 'package:e_learning/otp.dart';

// import 'Personal Details.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      title: 'Exam Runner Up',
      home: Splashscreen(),
    );
  }
}
