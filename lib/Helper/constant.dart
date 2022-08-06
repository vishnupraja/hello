import 'package:e_learning/Helper/style.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

showToast(msg) {
  Fluttertoast.showToast(
      msg: "$msg",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP_RIGHT,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 12.0);
}

String? CUR_USERID;

saveUser(userId) async {
  final prefs = await SharedPreferences.getInstance();
  bool data = await prefs.setString('userId', '$userId');
  if (data) {
    CUR_USERID = prefs.getString('userId');
    print(CUR_USERID);
    return true;
  } else {
    return false;
  }
}

logout(userId) async {
  final prefs = await SharedPreferences.getInstance();
  bool data = await prefs.setString('userId', '$userId');
  if (data) {
    return true;
  } else {
    return false;
  }
}


AppBar appBar(title){
  return AppBar(
    backgroundColor: primary,
    elevation: 0,
    title: Text("$title"),
  );
}