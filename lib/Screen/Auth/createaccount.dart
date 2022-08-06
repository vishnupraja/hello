import 'package:e_learning/Helper/Provider/user_provider.dart';
import 'package:e_learning/Helper/constant.dart';
import 'package:e_learning/Helper/validator.dart';
import 'package:e_learning/Screen/Auth/loginscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../../Api/constant.dart';
import '../../Model/SignupModel.dart';
import '../dashboard.dart';

class CreateAccounts extends StatefulWidget {
  const CreateAccounts({Key? key}) : super(key: key);

  @override
  State<CreateAccounts> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccounts> {
  bool passenable = true; //boolean value to track password view enable disable.
  bool _isNetworkAvail = true;

  bool visible = false;

  // Getting value from TextField widget.
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // var _formKey = GlobalKey<FormState>();
  var isLoading = false;
  final _formKey = GlobalKey<FormState>();
  var snackBar = SnackBar(
    content: Text('Can not Empty!'),
  );
  bool _passwordVisible = false;









  // var isLoading = false;
  _signup() async {
    var user = Provider.of<UserProvider>(context , listen: false);
    if (nameController.text.toString().isNotEmpty &&
        emailController.text.toString().isNotEmpty &&
        passwordController.text.toString().isNotEmpty) {
      SignupModel? model = await getSignup(nameController.text,
          emailController.text, passwordController.text, "firebase");
      if (model!.status == true) {
        bool data = await saveUser(model.data!.userId);
        if (data) {
           showToast("Welcome ${model.data!.username}");
          user.userId = model.data!.userId;
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => DashBoardPage()),
              (route) => false);
        }
      } else {
        // ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    } else {
      showToast("Please Enter Credential");
      // ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  // void _submit() {
  //   final isValid = _formKey.currentState.validate();
  //   if (!isValid) {
  //     return;
  //   }
  //   _formKey.currentState.save();
  // }
  bool agree = false;
  void _doSomething() {}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // 1
        elevation: 0,
        centerTitle: true,
        title: Text("Create an account", textAlign: TextAlign.center),
      ),
      body: ListView(
        children: [
          Form(
            key: _formKey,
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Create an account',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "By using services you are agreeing to our",
                            style: TextStyle(color: Colors.black87)),
                        TextSpan(
                            text: " Terms ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: "and",
                            style: TextStyle(color: Colors.black87)),
                        TextSpan(
                            text: " Privacy Statement",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
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
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextFormField(
                                  decoration:
                                      InputDecoration(labelText: 'Name'),
                                  keyboardType: TextInputType.name,
                                  controller: nameController,
                                  autofocus: true,
                                ),
                                TextFormField(
                                  decoration:
                                      InputDecoration(labelText: 'Email'),
                                  keyboardType: TextInputType.emailAddress,
                                  controller: emailController,
                                  validator: (value) => validateEmail(value),
                                ),
                                TextFormField(
                                  obscureText: _passwordVisible ? true : false,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        // Based on passwordVisible state choose the icon
                                        _passwordVisible
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        color:
                                            Theme.of(context).primaryColorDark,
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
                                      child: Text('Create account'),
                                      onPressed: () {
                                        // if (_formKey.currentState!.validate()) {
                                        //   // If the form is valid, display a snackbar. In the real world,
                                        //   // you'd often call a server or save the information in a database.
                                        //   ScaffoldMessenger.of(context)
                                        //       .showSnackBar(
                                        //     const SnackBar(
                                        //         content:
                                        //             Text('Processing Data')),
                                        //   );
                                          _signup();
                                        // }else{
                                        //
                                        // }
                                      },
                                    )),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    // SizedBox(width: 10,),

                                    Checkbox(
                                        value: agree,
                                        onChanged: (value) {
                                          setState(() {
                                            agree = value ?? false;
                                          });



                                        }),

                                    Text(
                                      'Email me deals and recommendations: ',
                                      style: TextStyle(fontSize: 12.0),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      ],
                    ),
                  ),

                  // Text('New User? Create Account

                  InkWell(
                    onTap: () {},
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
                                            builder: (context) =>
                                                MyHomePageLogin(
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
          ),
        ],
      ),
    );
  }

//==============================================================================
//============================= Network Checking ===============================

// FutureBuilder<SignupModel> buildFutureBuilder() {
//   return FutureBuilder<SignupModel>(
//     future: Signup(),
//     builder: (context, snapshot) {
//       if (snapshot.hasData) {
//         return Text(snapshot.data!.title);
//       } else if (snapshot.hasError) {
//         return Text('${snapshot.error}');
//       }
//
//       return const CircularProgressIndicator();
//     },
//   );
// }

}
