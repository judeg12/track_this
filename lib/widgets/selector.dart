import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Selector extends StatefulWidget {
  const Selector({Key? key}) : super(key: key);
  @override
  _SelectorState createState() => _SelectorState();
}

class _SelectorState extends State<Selector> {
  // TODO: move color definitions to app theme
  Color accentColor = Colors.teal;
  Color selectColor = Colors.orangeAccent;
  Color? primaryColor = Colors.grey[300];
  // state variables
  bool play = false;
  bool _selectItemA = true;
  bool _selectItemB = false;
  bool _selectItemC = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(clipBehavior: Clip.none, alignment: Alignment.center, children: [
        const SizedBox(height: 220, width: 175), // keeps circles within stack
        (_selectItemA || _selectItemB || _selectItemC)
            ? Icon(Icons.pause, color: accentColor, size: 30.0)
            : Icon(Icons.play_arrow, color: accentColor, size: 30.0),
        Positioned(
          top: 5,
          child: IconButton(
              onPressed: (() {
                setState(() {
                  _selectItemA = !_selectItemA;
                  _selectItemB = false;
                  _selectItemC = false;
                });
              }),
              icon: Icon(Icons.circle, color: _selectItemA ? selectColor : accentColor, size: 30)),
        ),
        Positioned(
          left: 5,
          bottom: 30,
          child: IconButton(
              onPressed: (() {
                setState(() {
                  _selectItemA = false;
                  _selectItemB = !_selectItemB;
                  _selectItemC = false;
                });
              }),
              icon: Icon(Icons.circle, color: _selectItemB ? selectColor : accentColor, size: 30)),
        ),
        Positioned(
          right: 5,
          bottom: 30,
          child: IconButton(
              onPressed: (() {
                setState(() {
                  _selectItemA = false;
                  _selectItemB = false;
                  _selectItemC = !_selectItemC;
                });
              }),
              icon: Icon(Icons.circle, color: _selectItemC ? selectColor : accentColor, size: 30)),
        ),
      ]),
    );
  }
}
