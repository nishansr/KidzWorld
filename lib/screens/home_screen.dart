import 'package:flutter/material.dart';
import '../sections/trace_and_draw.dart';
import '../widgets/carousel_card.dart';
//ignore_for_file: prefer_const_constructors

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CarouselCard(title: "Be effective", img: "assets/kid1.png"),
                SizedBox(width: 20),
                CarouselCard(title: "Learn With Fun", img: "assets/custom.png"),
                SizedBox(width: 20),
                CarouselCard(title: "Be Creative", img: "assets/drawing.png"),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 180,
            width: w,
            decoration: BoxDecoration(
              color: Color(0xffFCB300),
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Learn With Fun',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset("assets/kid1.png", height: 100)
                ],
              ),
            ),
          ),
          SizedBox(height: 35.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xff991E4F),
                    width: 2.0,
                  ),
                ),
              ),
              child: Text(
                'Trace & Draw                   ',
                style: TextStyle(
                  color: Color(0xff991E4F),
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Division(),
        ],
      ),
    );
  }
}
