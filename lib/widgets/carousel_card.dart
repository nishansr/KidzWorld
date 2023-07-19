import 'package:flutter/material.dart';
//ignore_for_file: prefer_const_constructors

class CarouselCard extends StatelessWidget {
  final String title;
  final String img;
  const CarouselCard({super.key, required this.title, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Color(0xffFCB300),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset(img, height: 80)
          ],
        ),
      ),
    );
  }
}
