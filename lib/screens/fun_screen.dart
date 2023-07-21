//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import '../widgets/card.dart';

class Fun extends StatefulWidget {
  const Fun({super.key});

  @override
  State<Fun> createState() => _FunState();
}

class _FunState extends State<Fun> {
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
              'Play                          ',
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
                  title: 'Math Game',
                  img: "assets/one.png",
                  color: Colors.blue),
              CustomCard(
                  title: 'Words Game',
                  img: "assets/A.png",
                  color: Colors.orange),
              CustomCard(
                  title: 'Puzzle Game',
                  img: "assets/custom.png",
                  color: Color.fromARGB(255, 233, 179, 171)),
              CustomCard(
                  title: 'Memory Game',
                  img: "assets/drawing.png",
                  color: Colors.green),
            ],
          )
        ],
      ),
    );
  }
}
