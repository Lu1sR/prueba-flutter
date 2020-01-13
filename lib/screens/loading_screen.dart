import 'package:flutter/material.dart';
import 'package:flash_chat/services/Networking.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flash_chat/screens/home_screen.dart';

class Loading_Screen extends StatefulWidget {
  final String token;
  Loading_Screen(this.token);
  @override
  _Loading_ScreenState createState() => _Loading_ScreenState();
}

class _Loading_ScreenState extends State<Loading_Screen> {
  String token;
  @override
  void initState() {
    token = widget.token;
    getUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitRing(
          color: Colors.black,
          size: 50.0,
        ),
      ),
    );
  }

  void getUserData() async {
    NetworkHelper networkHelper = NetworkHelper('http://10.0.2.2:3000/datos');
    var userData = await networkHelper.getData();
    print(userData);
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => Home_Screen(userData)));
  }
}
