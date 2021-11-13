import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Selector extends StatefulWidget {
  const Selector({Key? key}) : super(key: key);
  @override
  _SelectorState createState() => _SelectorState();
}

class _SelectorState extends State<Selector> {
  Color accentColor = Colors.teal;
  Color? primaryColor = Colors.grey[600];
  bool play = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(clipBehavior: Clip.none, children: [
        IconButton(
            onPressed: (() {
              setState(() {
                play = !play;
              });
            }),
            icon: play
                ? Icon(Icons.pause, color: accentColor, size: 40.0)
                : Icon(Icons.play_arrow, color: accentColor, size: 40.0)),
        Positioned(
          bottom: 80,
          child: Icon(Icons.circle, color: accentColor),
        ),
        Positioned(
          right: 75,
          top: 50,
          child: Icon(Icons.circle, color: accentColor),
        ),
        Positioned(
          left: 75,
          top: 50,
          child: Icon(Icons.circle, color: accentColor),
        ),
      ]),
    );
  }
}
