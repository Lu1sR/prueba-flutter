import 'package:flutter/material.dart';
import 'package:flash_chat/widgets/scroll_view.dart';

class Feed_Screen extends StatefulWidget {
  var userData;
  Feed_Screen(this.userData);
  static final String id = 'feed_screen';
  @override
  _Feed_ScreenState createState() => _Feed_ScreenState();
}

class _Feed_ScreenState extends State<Feed_Screen> {
  void initState() {
    print(widget.userData);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Center(
          child: Text("Puntos"),
        ),
        SizedBox(
          height: 300,
        ),
        Expanded(
          child: Container(
            child: ImageCards(),
          ),
        )
      ],
    ));
  }
}
