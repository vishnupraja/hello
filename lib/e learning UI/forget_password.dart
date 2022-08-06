import 'package:e_learning/e%20learning%20UI/Personal%20Details.dart';
import 'package:flutter/material.dart';
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> with InputValidationMixin {
  final formGlobalKey = GlobalKey < FormState > ();
  TextEditingController forgetpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9D3B9),
      appBar: AppBar(
        backgroundColor: Color(0xff3B76BC),
        centerTitle: true,
        leading: Container(
          height: 35,
          width: 35,
          margin: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        title: const Text(
          "Forgot Pasword",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Form(
              key: formGlobalKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/password.png",
                    height: 150,
                    width: 150,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Text(
                      "Enter the Email associated with your account we will send you a email to reset your password",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18,right: 18,top: 5),
                    child: TextFormField(

                        validator: (email) {
                          if (isEmailValid(email!)) return null;
                          else
                            return 'Enter a valid email address';
                        },
                        keyboardType: TextInputType.emailAddress,
                        controller: forgetpasswordController,
                        decoration: InputDecoration(
                         // errorText: 'required Email',


                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'Enter your Email',
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Color(0xff3B76BC),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black38,
                            ),

                            // child: TextFormField(
                            //   keyboardType: TextInputType.emailAddress,
                            //   controller: forgetpasswordController,
                            //   decoration: InputDecoration(
                            //     border: OutlineInputBorder(
                            //       borderSide: BorderSide(
                            //         color: Colors.black,
                            //       ),
                            //     ),
                            //     enabledBorder: OutlineInputBorder(
                            //       borderSide: BorderSide(
                            //         color: Colors.black,
                            //       ),
                            //     ),
                            //     hintText: 'Email',
                            //     prefixIcon: const Icon(
                            //       Icons.email,
                            //       color: Color(0xff3B76BC),
                            //     ),
                            //     prefixText: ' ',
                            //     labelStyle: const TextStyle(
                            //       color: Colors.black,
                            //       fontWeight: FontWeight.bold,
                            //     ),
                            //     focusedBorder: OutlineInputBorder(
                            //       borderSide: const BorderSide(
                            //         color: Colors.black38,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        onPrimary: Colors.white,
                        primary: Color(0xff0BA84A),
                        fixedSize: Size(315, 45)),
                    onPressed: () {

                      if (formGlobalKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreateAccount()));
                      }

                      print("EMAil==========${forgetpasswordController.text}");
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

mixin InputValidationMixin {
  bool isEmailValid(String email) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern.toString());
    return regex.hasMatch(email);
  }
}
