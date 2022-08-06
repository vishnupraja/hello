import 'dart:convert';

import 'package:e_learning/Screen/Auth/loginscreenfield.dart';
import 'package:e_learning/Screen/Auth/signUp_type.dart';
import 'package:e_learning/e%20learning%20UI/Splashscreen.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Learning',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePageLogin(title: "demo"),
      // home: const ProductListTitle(),
    );
  }
}

class MyHomePageLogin extends StatefulWidget {
  const MyHomePageLogin({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePageLogin> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePageLogin> {
  login() async {
    if (kIsWeb) {
      // initialiaze the facebook javascript SDK
      await FacebookAuth.instance.webInitialize(
        appId: "1329834907365798",
        cookie: true,
        xfbml: true,
        version: "v13.0",
      );
    }
  }

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text(
              'Sign In',
              style: Theme.of(context).textTheme.displaySmall,
              // style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                  // child: Text("Have an account?"),alignment: Alignment.bottomCenter,
                  // margin: EdgeInsets.fromLTRB(12, 20, 8, 12),
                  child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "By using services you are agreeing to our",
                      style: TextStyle(color: Colors.black87)),
                  TextSpan(
                      text: " Terms ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: "and", style: TextStyle(color: Colors.black87)),
                  TextSpan(
                      text: " Privacy Statement",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),

                ]),
              )),
            ),

            SizedBox(
              height: 80,
            ),
           Column(
             children: [
               Container(
                 child: Column(
                   children: <Widget>[
                     Container(
                       margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                       width: MediaQuery.of(context).size.width,
                       height: 50,
                       child: TextButton.icon(
                           onPressed: () {
                             Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                     builder: (context) => LoginScreenField()));
                           },
                           icon: Icon(Icons.home, color: Colors.black),
                           label: Text("Sign in with email",
                               style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold))),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(3)),
                           shape: BoxShape.rectangle,
                           border: Border.all(
                             color: Colors.black,
                             width: 1,
                           )),
                     ),
                     Container(
                       margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                       width: MediaQuery.of(context).size.width,
                       height: 50,
                       child: TextButton.icon(
                           onPressed: () {},
                           icon: Icon(Icons.home, color: Colors.black),
                           label: Text("Sign in with Google",
                               style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold))),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(3)),
                           shape: BoxShape.rectangle,
                           border: Border.all(
                             color: Colors.black,
                             width: 1,
                           )),
                     ),

                     Container(
                       margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                       width: MediaQuery.of(context).size.width,
                       height: 50,
                       child: TextButton.icon(
                           onPressed: () {
                             print("facebookdclick");
                             login();
                           },
                           icon: Padding(
                             child:  Icon(Icons.home, color: Colors.black),
                             padding: EdgeInsets.only(left: 10),
                           ),
                           label: Text("Sign in with Facebook",
                               style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold))),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(3)),
                           shape: BoxShape.rectangle,
                           border: Border.all(
                             color: Colors.black,
                             width: 1,
                           )),
                     ),
                     Container(
                       margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                       width: MediaQuery.of(context).size.width,
                       height: 50,
                       child: TextButton.icon(
                           onPressed: () {},
                           icon: Icon(Icons.home, color: Colors.black),
                           label: Text("Sign in with LinkedIn",
                               style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold))),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(3)),
                           shape: BoxShape.rectangle,
                           border: Border.all(
                             color: Colors.black,
                             width: 1,
                           )),
                     )
                     // TextButton.icon(onPressed: (){}, icon: Icon(Icons.home), label: Text("Facebook"))
                   ],
                 ),
               ),
             ],
           ),
            // Text('New User? Create Account')
            Spacer(),

            InkWell(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "New here? ",
                            style: TextStyle(color: Colors.black87)),
                        TextSpan(
                          text: "Create an account",
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Signup()));
                              // Single tapped.
                            },
                        ),
                      ]),
                    )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(

                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Splashscreen()));
                }, child: Text('go New Ui page'),),
          ],
        ),

      ),
    );
  }
}
String prettyPrint(Map json) {
  JsonEncoder encoder = new JsonEncoder.withIndent('  ');
  String pretty = encoder.convert(json);
  return pretty;
}