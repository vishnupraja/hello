import 'dart:io';

import 'package:e_learning/Api/constant.dart';
import 'package:e_learning/Helper/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Helper/Provider/user_provider.dart';
import '../../Model/GetProfileModel.dart';
import 'package:image_picker/image_picker.dart';
import '../Auth/signUp_type.dart';
import '../Auth/loginscreenfield.dart';

class MainAccount extends StatefulWidget {
  const MainAccount({Key? key}) : super(key: key);

  @override
  State<MainAccount> createState() => _MainAccountState();
}

class _MainAccountState extends State<MainAccount> {
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserProvider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            CUR_USERID != null
                ? FutureBuilder(
                    future: getProfileapi(CUR_USERID),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        imageFile = null;
                        GetProfileModel gprofile = snapshot.data;
                        return Column(
                          children: [
                            if (gprofile.data![0].image != null)
                              Image.network("${gprofile.data![0].image}")
                            else
                              // Image.asset("assets/images/mem.png"),
                              // Image.network("${imageFile}"),
                              imageFile != null
                                  ? Image.file(File(imageFile!.path))
                                  : ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Choose Image")),
                            Text("${gprofile.data![0].username}"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/google.png",
                                  height: 25,
                                  width: 25,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("${gprofile.data![0].email}"),
                                )
                              ],
                            ),
                            TextButton(
                                child: Text(
                                  'Switch to instructor',
                                  style: TextStyle(
                                      color: Colors.deepPurpleAccent,
                                      fontSize: 17),
                                ),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (ctx) => AlertDialog(
                                      title: Text("Pick Image"),
                                      content: Text("Throw Gallery or Camera"),
                                      actions: <Widget>[
                                        FlatButton(
                                          onPressed: () {
                                            _getFromGallery();
                                            // dispose();
                                            Navigator.of(ctx).pop();
                                          },
                                          child: Text("Gallery"),
                                        ),
                                        FlatButton(
                                          onPressed: () {
                                            _getFromCamera();
                                            // dispose();
                                            Navigator.of(ctx).pop();
                                          },
                                          child: Text("Camera"),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                          ],
                        );
                      } else if (snapshot.hasError) {
                        return Icon(Icons.error_outline);
                      } else {
                        return Center(child: CircularProgressIndicator());
                      }
                    })
                : SizedBox(
                    height: 10,
                  ),
            Text("Video preferences",
                style: TextStyle(fontSize: 15, color: Colors.black26)),
            SizedBox(
              height: 20,
            ),
            // ListTile(
            //   leading: Text(
            //     "Download option",
            //     style: TextStyle(fontSize: 15),
            //   ),
            //   trailing: Icon(Icons.arrow_forward_ios_sharp),
            // ),
            ListTile(
              leading: Text(
                "Video playback option",
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Account settings",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black26,
                )),
            ListTile(
              leading: Text(
                "Account Security",
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            ListTile(
              leading: Text(
                "Email notification preferences",
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),

            ListTile(
              leading: Text(
                "Learning reminders ",
                style: TextStyle(fontSize: 15),
              ),
              title: Card(
                color: Color(0XFF87ceeb),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'NEW',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textScaleFactor: 1.2,
                    ),
                  ),
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Help and Support",
                style: TextStyle(fontSize: 15, color: Colors.black26)),
            ListTile(
              leading: Text(
                "About e-learning",
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            ListTile(
              leading: Text(
                "About e-learning Business",
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            ListTile(
              leading: Text(
                "Frequently asked question ",
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            ListTile(
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
              leading: Text(
                "Status",
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            // user.userId!=null?TextButton(onPressed: () async {
            //   bool data = await logout("");
            //   if(data){
            //     user.userId = null;
            //     Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Signup()), (route) => false);
            //   }else{
            //
            //   }
            //
            // }, child: Text("Logout")):  TextButton(
            //     child: Text(
            //       'Login In',
            //       style:
            //       TextStyle(color: Colors.deepPurpleAccent, fontSize: 20),
            //     ),
            //     onPressed: () {
            //       Navigator.push(context,
            //           MaterialPageRoute(builder: (context) => LoginScreenField()));
            //       // print('Pressed');
            //     }),

            CUR_USERID != null
                ? TextButton(
                    onPressed: () async {
                      bool data = await logout("");
                      if (data) {
                        user.userId = null;
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => Signup()),
                            (route) => false);
                      } else {
// null nahi he
                      }
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
                              builder: (context) => LoginScreenField()));
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

  /// Get from gallery
  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
        // Image.asset("assets/images/mem.png");
      });
    }
  }

  /// Get from Camera
  _getFromCamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 40,
      maxHeight: 40,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
        // Image.network("${imageFile}");
        // Image.file(File(imageFile.path));
      });
    }
  }
}
