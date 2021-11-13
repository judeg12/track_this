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
  bool _selectItemA = true;
  bool _selectItemB = false;
  bool _selectItemC = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(clipBehavior: Clip.none, alignment: Alignment.center, children: [
        const SizedBox(height: 220, width: 175), // keeps circles within stack
        IconButton(
            onPressed: (() {
              setState(() {
                play = !play;
              });
            }),
            icon: play
                ? Icon(Icons.pause, color: accentColor, size: 30.0)
                : Icon(Icons.play_arrow, color: accentColor, size: 30.0)),
        Positioned(
          top: 5,
          child: IconButton(
              onPressed: (() {
                setState(() {
                  _selectItemA = true;
                  _selectItemB = false;
                  _selectItemC = false;
                });
              }),
              icon: Icon(Icons.circle, color: accentColor, size: 30)),
        ),
        Positioned(
          left: 5,
          bottom: 30,
          child: IconButton(
              onPressed: (() {
                setState(() {
                  _selectItemA = false;
                  _selectItemB = true;
                  _selectItemC = false;
                });
              }),
              icon: Icon(Icons.circle, color: accentColor, size: 30)),
        ),
        Positioned(
          right: 5,
          bottom: 30,
          child: IconButton(
              onPressed: (() {
                setState(() {
                  _selectItemA = false;
                  _selectItemB = false;
                  _selectItemC = true;
                });
              }),
              icon: Icon(Icons.circle, color: accentColor, size: 30)),
        ),
      ]),
    );
  }
}
