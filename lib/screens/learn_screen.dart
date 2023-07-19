import 'package:flutter/material.dart';
//ignore_for_file: prefer_const_constructors
import '../widgets/card.dart';

class Learn extends StatefulWidget {
  const Learn({super.key});

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 35),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xff991E4F),
                  width: 2.0,
                ),
              ),
            ),
            child: Text(
              'Learn                        ',
              style: TextStyle(
                color: Color(0xff991E4F),
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: const [
              CustomCard(
                  title: 'Learn Digits',
                  img: "assets/one.png",
                  color: Colors.orange),
              CustomCard(
                  title: 'Learn Letters',
                  img: "assets/A.png",
                  color: Colors.green),
              CustomCard(
                  title: 'Nepali Vowels',
                  img: "assets/custom.png",
                  color: Colors.blue),
              CustomCard(
                  title: 'Addition',
                  img: "assets/drawing.png",
                  color: Colors.yellow),
              CustomCard(
                  title: 'Subtraction',
                  img: "assets/book.png",
                  color: Color(0xff991E4F)),
              CustomCard(
                  title: 'Table', img: "assets/one.png", color: Colors.orange),
              CustomCard(
                  title: 'Animals', img: "assets/A.png", color: Colors.green),
              CustomCard(
                  title: 'Birds', img: "assets/custom.png", color: Colors.blue),
              CustomCard(
                  title: 'Fruts And\nVegetables',
                  img: "assets/drawing.png",
                  color: Colors.yellow),
              CustomCard(
                  title: 'Vehicles',
                  img: "assets/book.png",
                  color: Color(0xff991E4F)),
              CustomCard(
                  title: 'Others',
                  img: "assets/book.png",
                  color: Color(0xff991E4F)),
            ],
          )
        ],
      ),
    );
  }
}
