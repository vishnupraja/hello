import 'package:e_learning/Helper/Provider/user_provider.dart';
import 'package:e_learning/Helper/constant.dart';
import 'package:e_learning/Screen/Auth/signUp_type.dart';
import 'package:e_learning/Screen/LoginScreen/mainAccount.dart';
import 'package:e_learning/Screen/Question_Answer/question_answer_home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';
class SignInAccount extends StatefulWidget {
  const SignInAccount({Key? key}) : super(key: key);

  @override
  State<SignInAccount> createState() => _SignInAccountState();
}

class _SignInAccountState extends State<SignInAccount> {
  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserProvider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Text("Help and Support",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionAnswerHome()));
              },
              leading: Text(
                "Question Answers",
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            ListTile(
              onTap: () {
                print("about click");
                setState(() {
                });
              },
              leading: Text(
                "About e-learning",
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            ListTile(
              onTap: () {
                print("Business click");
                setState(() {
                });
              },
              leading: Text(
                "About e-learning Business",
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            ListTile(
              onTap: () {
                print("quesetion click");
                setState(() {
                });
              },
              leading: Text(
                "Frequently asked question ",
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            ListTile(
              onTap: () {
                print("shareapp");
                Share.share('check out my website https://example.com');
                // Share.share(
                //     'check out my website https://protocoderspoint.com/',
                //     subject: 'Sharing on Email');
                setState(() {
                  // txt='List Tile pressed';
                });
              },
              leading: Text(
                "Share the e-learning App",
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Diagnostics",
                style: TextStyle(fontSize: 15, color: Colors.black26)),
            ListTile(
              onTap: () {
                print("status");
                     setState(() {
                });
              },
              leading: Text(
                "Status",
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            user.userId != null
                ? TextButton(
                    onPressed: () async {
                      bool data = await logout("");
                      if (data) {
                        user.userId = null;
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => Signup()),
                            (route) => false);
                      } else {}
                    },
                    child: Text("Logout"))
                : TextButton(
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.deepPurpleAccent, fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainAccount()));
                      // print('Pressed');
                    }),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              'e-learning v7.24.1',
              style: TextStyle(fontSize: 15, color: Colors.black26),
            )),
          ],
        ),
      ),
    );
  }
}
