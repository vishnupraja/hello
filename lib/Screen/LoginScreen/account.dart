import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Text("Video preferences",style: TextStyle(fontSize: 15,color: Colors.black26)),
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
            Text("Account settings", style: TextStyle(fontSize: 15,color: Colors.black26,)),
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
                      'NEW',style: TextStyle(fontWeight: FontWeight.bold),
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
            Text("Help and Support",style: TextStyle(fontSize: 15,color: Colors.black26)),
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
            Text("Diagnostics",style: TextStyle(fontSize: 15,color: Colors.black26)),
            ListTile(
              leading: Text(
                "Status",
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            TextButton(
                child: Text('Sign out',style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 20),),
                onPressed: () {
                  print('Pressed');
                }
            ),
            SizedBox(
              height: 20,
            ),
            Center(child: Text('e-learning v7.24.1',style: TextStyle(fontSize: 15,color: Colors.black26),)),
          ],
        ),
      ),
    );
  }
}
