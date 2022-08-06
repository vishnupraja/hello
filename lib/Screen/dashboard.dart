import 'package:badges/badges.dart';
import 'package:e_learning/Api/constant.dart';
import 'package:e_learning/Helper/Provider/user_provider.dart';
import 'package:e_learning/Helper/style.dart';
import 'package:e_learning/Screen/Home/home.dart';
import 'package:e_learning/Screen/LoginScreen/getwishlistdata.dart';
import 'package:e_learning/Screen/LoginScreen/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Model/GetWishlistModel.dart';
import 'LoginScreen/faqlist.dart';
import 'LoginScreen/mainAccount.dart';
import 'LoginScreen/my_course.dart';
import 'Quiz/quiz_home.dart';
import 'LoginScreen/signInAccount.dart';
import 'LoginScreen/wishList.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    QuizHome(),
    // FAQList(),
    // Product(),
    MyCourse(),
    GetWishListData(),
    // MainAccount()
    SignInAccount()
    // MainAccount(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserProvider>(context);
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icon/home.png")),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icon/quiz.png")),
            label: 'Quiz',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icon/play.png")),
            label: 'My Course',
          ),
          BottomNavigationBarItem(
            icon: FutureBuilder(
                future: getWishList(user.userId),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    GetWishlistModel wish = snapshot.data;
                    return wish.status == false
                        ? Container()
                        : Badge(
                        badgeColor: Colors.black,
                        badgeContent: Text(
                          "${snapshot.data.data.length}",
                          style: TextStyle(color: Colors.white),
                        ),
                        child: ImageIcon(
                            AssetImage("assets/icon/favourite.png")));
                  } else if (snapshot.hasError) {
                    return Icon(Icons.error_outline);
                  } else {
                    return Icon(Icons.favorite_outline_rounded);
                  }
                }),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icon/account.png")),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: primary,
        unselectedItemColor: secondary,
        backgroundColor: Colors.transparent,
        elevation: 0,
        onTap: _onItemTapped,
      ),
    );
  }
}
