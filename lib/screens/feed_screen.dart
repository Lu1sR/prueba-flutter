import 'package:flutter/material.dart';

class Feed_Screen extends StatefulWidget {
  static final String id = 'feed_screen';
  @override
  _Feed_ScreenState createState() => _Feed_ScreenState();
}

class _Feed_ScreenState extends State<Feed_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(child: Text('Logout')),
    );
  }
}
