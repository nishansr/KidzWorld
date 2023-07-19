import 'package:flutter_drawing_board/flutter_drawing_board.dart';
import 'package:flutter/material.dart';
import 'package:kidzworld/widgets/small_card.dart';
//ignore_for_file: prefer_const_constructors

class Digits extends StatefulWidget {
  const Digits({super.key});

  @override
  State<Digits> createState() => _DigitsState();
}

class _DigitsState extends State<Digits> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text('Drawing'),
          elevation: 0.0,
        ),
        body: DrawingBoard(
          background: Container(
            width: w,
            height: w,
            color: Colors.white,
          ),
        ));
  }
}
