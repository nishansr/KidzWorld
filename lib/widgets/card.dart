import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final title;
  final img;
  final color;
  const CustomCard(
      {super.key, required this.title, required this.img, required this.color});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Container(
      height: w / 3.5,
      width: w / 3.5,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(3.0)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(img, height: 40),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ]),
    );
  }
}
