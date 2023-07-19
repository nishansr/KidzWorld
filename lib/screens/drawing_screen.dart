import 'package:flutter_drawing_board/flutter_drawing_board.dart';
import 'package:flutter/material.dart';
//ignore_for_file: prefer_const_constructors

class Drawing extends StatefulWidget {
  const Drawing({super.key});

  @override
  State<Drawing> createState() => _DrawingState();
}

class _DrawingState extends State<Drawing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 218, 187, 194),
        title: Text('Drawing'),
        elevation: 0.0,
      ),
      body: DrawingBoard(
        background: Container(
          width: 400,
          height: 400,
          color: Colors.white,
        ),
        showDefaultActions: true,
        showDefaultTools: true,
      ),
    );
  }
}
