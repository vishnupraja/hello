import 'package:e_learning/Screen/LoginScreen/account.dart';
import 'package:e_learning/Screen/LoginScreen/introImage.dart';
import 'package:e_learning/Screen/LoginScreen/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'feat.dart';
import 'mainAccount.dart';
class DashBoardPageNew extends StatefulWidget {
  const DashBoardPageNew({Key? key}) : super(key: key);

  @override
  State<DashBoardPageNew> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPageNew> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
   // Home(),
    Feat(),
    Product(),
    IntroScreen(),
    Account(),
    //SignInAccount(),
    MainAccount(),

    Text(
      'Index 2: ssss',
      style: optionStyle,

    ),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  // List categories = ["Mon", "Tue", "Wed", "Thur", "Fri", "Sat"];
  // List selectedCategories = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account",style: TextStyle(color: Colors.black),),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.shopping_cart_outlined, color: Colors.black),
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(fontSize: 8),
        unselectedLabelStyle: TextStyle(fontSize: 8),
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Featured',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_rounded),
            label: 'Quiz',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wifi_tethering_rounded),
            label: 'My Learning',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_rounded),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}


