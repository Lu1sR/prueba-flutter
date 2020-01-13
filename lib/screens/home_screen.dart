import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flash_chat/screens/feed_screen.dart';
import 'package:flash_chat/screens/notification_screen.dart';
import 'package:flash_chat/screens/create_post_screen.dart';
import 'package:flash_chat/screens/search_screen.dart';
import 'profile_screen.dart';
import 'feed_screen.dart';

class Home_Screen extends StatefulWidget {
  var userData;
  Home_Screen(this.userData);
  @override
  static final String id = 'home_screen';
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int _currentTab = 0;
  PageController _pageController;
  var data;

  @override
  void initState() {
    super.initState();

    _pageController = PageController();
    data = widget.userData;
    print(data);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          Feed_Screen(data),
          Search_Screen(),
          CreatePost_Screen(),
          Notification_Screen(),
          Profile_Screen(),
        ],
        onPageChanged: (int index) {
          setState(() {
            _currentTab = index;
          });
        },
      ),
      bottomNavigationBar: CupertinoTabBar(
          currentIndex: _currentTab,
          onTap: (int index) {
            setState(() {
              _currentTab = index;
            });
            _pageController.animateToPage(index,
                duration: Duration(microseconds: 200),
                curve: Curves.bounceInOut);
          },
          activeColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 32.0,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_basket,
                size: 32.0,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.room,
                size: 32.0,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.cake,
                size: 32.0,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                size: 32.0,
              ),
            ),
          ]),
    );
  }
}
