import 'package:e_learning/Helper/constant.dart';
import 'package:e_learning/Screen/LoginScreen/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../Api/constant.dart';
import '../../Model/LoginModel.dart';
import '../dashboard.dart';

class LoginScreenField extends StatefulWidget {
  const LoginScreenField({Key? key}) : super(key: key);

  @override
  State<LoginScreenField> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<LoginScreenField> {
  bool passenable = true;
  bool visible = false;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var isLoading = false;
  var snackBar = SnackBar(
    content: Text('Can not Empty!'),
  );

  bool _passwordVisible = false;

  // @override
  // void initState() {
  //   _passwordVisible = false;
  // }

  _login() async {
    if (emailController.text.toString().isNotEmpty &&
        passwordController.text.toString().isNotEmpty) {
      LoginModel? model =
          await getLogin(emailController.text, passwordController.text);

      if (model!.status == true) {
        bool data = await saveUser(model.data!.userId);
        if (data) {
           showToast("Welcome ${model.data!.username}");
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => DashBoardPage()),
              (route) => false);
        }
      } else {}
    } else {
      showToast("Please Enter Credential");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // 1
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Welcome back!",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: "Enter your email to sign in to your account",
                    style: TextStyle(color: Colors.black87)),
              ]),
            )),
          ),
          SizedBox(
            height: 80,
          ),
          Container(
            // child: SingleChildScrollView(

            child: Column(
              children: <Widget>[
                Container(
                    height: 450,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          decoration: InputDecoration(labelText: 'Email'),
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                        ),
                        TextField(
                          // focusNode: focusPassword,
                          obscureText: _passwordVisible ? true : false,
                          // suffix: Icon(FontAwesomeIcons.eyeSlash,color: Colors.red,),
                          decoration: InputDecoration(
                            labelText: 'Password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                // Based on passwordVisible state choose the icon
                                _passwordVisible
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Theme.of(context).primaryColorDark,
                              ),
                              onPressed: () {
                                // Update the state i.e. toogle the state of passwordVisible variable
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                          ),

                          keyboardType: TextInputType.visiblePassword,
                          controller: passwordController,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                            height: 50,
                            width: 500,
                            // padding:  EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.black,
                                  onSurface: Colors.black),
                              child: Text('Next'),
                              onPressed: () {
                                _login();
                              },
                            ))
                      ],
                    )),
              ],
              // ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => DashBoardPage()),
                    (route) => false);
              },
              child: Text("Skip To Home"))
        ],
      ),
    );
  }
}
