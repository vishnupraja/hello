import 'dart:convert';

import 'package:e_learning/Model/LoginModel.dart';
import 'package:e_learning/e%20learning%20UI/forget_password.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../Screen/Auth/createaccount.dart';
import 'Personal Details.dart';
import 'otp.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController mobileNumberCtr = TextEditingController();
  TextEditingController PasswordCtr = TextEditingController();

  void login( String mobilenumber , password) async {
    try{

      var  response = await http.post(
        Uri.parse('sjjjks'),
        body: {
          'mobileNumber': mobilenumber,
          'password': password
        }

      );

      print(response);
      // if(response.statusCode == 200){
      //   var data = jsonDecode(response.body.toString());
      //   print(data);
      //   print('login successfully');

      // }else('failed');

    }catch(e){
      print(e.toString());
    }

  }
  bool _isObscure = true;


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
          backgroundColor: Color(0xffF9D3B9),
          body: SingleChildScrollView(
              child: Column(
            children: [
              Image.asset(
                "assets/images/login1.png",
                height: 157,
                width: 380,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 25),
              Text(
                "Login",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
              SizedBox(height: 25),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18, top: 5),
                  child: TextFormField(
                    maxLength: 10,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter mobail no';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    controller: mobileNumberCtr,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      hintText: 'Enter Mobile Number',
                      prefixIcon: const Icon(
                        Icons.phone,
                        color: Color(0xff3B76BC),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black38,
                        ),
                        borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18, top: 5),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter Password ';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    obscureText: !_isObscure,
                    controller: PasswordCtr,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'Enter Password',
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color(0xff3B76BC),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(15),


                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black38,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                        suffixIcon: IconButton(
                            icon: Icon(
                                _isObscure ? Icons.visibility : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            })
                    ),
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 190),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>ForgetPassword()));
                    },
                    child: Text(
                      "Forgot  Password ?",
                      style: TextStyle(
                        fontSize: 14,
                        // fontWeight: FontWeight.bold,
                        color: Color(0xffA71D1E),
                      ),
                    ),
                  )
                ),
                SizedBox(
                  height: 18,
                ),
                InkWell(
                  onTap: () {
                    print(mobileNumberCtr.text);
                    print(PasswordCtr.text);
                    login(mobileNumberCtr.text.toString(),PasswordCtr.text.toString());
                    if (_formKey.currentState!.validate()) {
                      print("Process data");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Otp_page()));
                    } else {
                      print('Error');
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff0BA84A),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 50,
                    width: 325,
                    child: Center(
                      child: Text(
                        "Log In",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xffFFFFFF)),
                      ),
                    ),
                  ),
                ),
              ]),
            ],
          )),
          bottomNavigationBar: Container(
            margin: EdgeInsets.all(15.0),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 65,
                ),
                Text("Don't Have An Account?",
                    style: TextStyle(
                      fontSize: 12,
                    )),
               InkWell(
                 onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccount()));
                 },
                 child:  Text(" Create Account",
                     style: TextStyle(fontSize: 12, color: Color(0xff3B76BC))),
               )
              ],
            ),
          )),
    );
  }
}
