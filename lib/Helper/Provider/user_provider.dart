import 'package:flutter/foundation.dart';

class UserProvider extends ChangeNotifier{
  var userId;
  void onChange(value){
    userId = value;
    notifyListeners();
  }
}