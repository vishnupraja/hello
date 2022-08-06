import 'dart:convert';

import 'package:e_learning/Screen/Auth/loginscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

import 'createaccount.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _isLoggedIn = false;
  Map _userObj = {};

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
              'Create an account',
              style: Theme.of(context).textTheme.displayMedium,
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
                                  builder: (context) => CreateAccounts()));
                        },
                        icon: Icon(Icons.home, color: Colors.black),
                        label: Text("Create with email",
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
                        label: Text("Create with Google",
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
                        onPressed: () async {
                          FacebookAuth.instance.login(permissions: [
                            "public_profile",
                            "rahulrajalphawizz@gmail.com"
                          ]).then((value) {
                            FacebookAuth.instance
                                .getUserData()
                                .then((userData) {
                              setState(() {
                                _isLoggedIn = true;
                                _userObj = userData;
                              });
                            });
                          });
                        },
                        icon: Icon(Icons.home, color: Colors.black),
                        label: Text("Create with Facebook",
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
                  // Container(
                  //   margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                  //   width: MediaQuery.of(context).size.width,
                  //   height: 50,
                  //   child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.home,color: Colors.black), label: Text("Sign in with LinkedIn",  style: TextStyle(
                  //       color: Colors.black, fontWeight: FontWeight.bold))),
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.all(Radius.circular(3)),
                  //       shape: BoxShape.rectangle,
                  //       border: Border.all(
                  //         color: Colors.black,
                  //         width: 1,
                  //       )),
                  // )
                  // TextButton.icon(onPressed: (){}, icon: Icon(Icons.home), label: Text("Facebook"))
                ],
              ),
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
                            text: "Have an account?  ",
                            style: TextStyle(color: Colors.black87)),
                        TextSpan(
                          text: "  Sign In",
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHomePageLogin(
                                            title: '',
                                          )));
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
