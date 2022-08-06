import 'package:e_learning/Helper/Provider/user_provider.dart';
import 'package:e_learning/Screen/Splash/introslider.dart';
import 'package:e_learning/Screen/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<String> userId;

  @override
  void initState() {
    super.initState();
    userId = _prefs.then((SharedPreferences prefs) {
      return (prefs.getString('userId') ?? "");
    });
  }

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserProvider>(context);
    return FutureBuilder(
        future: userId,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data == "") {
              return IntroSliderFirst();
            } else {
              user.userId = snapshot.data;
              return DashBoardPage();
            }
          } else if (snapshot.hasError) {
            return Icon(Icons.error_outline);
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}
