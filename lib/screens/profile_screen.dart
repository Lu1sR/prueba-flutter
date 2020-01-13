import 'package:flutter/material.dart';

class Profile_Screen extends StatefulWidget {
  @override
  _Profile_ScreenState createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new RefreshIndicator(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Puntos"),
            ),
            Container(
              child: Text('Abajo'),
            )
          ],
        ),
        onRefresh: _handle,
      ),
    );
  }

  Future<Null> _handle() async {
    setState(() {
      print('hola');
    });
    return null;
  }
}
