import 'package:flutter/material.dart';
import '../screens/digits.dart';
import '../screens/drawing_screen.dart';
import '../widgets/card.dart';

class Division extends StatefulWidget {
  const Division({super.key});

  @override
  State<Division> createState() => _DivisionState();
}

class _DivisionState extends State<Division> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => Digits())));
            });
          },
          child: CustomCard(
              title: 'Digits', img: "assets/one.png", color: Colors.orange),
        ),
        CustomCard(title: 'Letters', img: "assets/A.png", color: Colors.green),
        CustomCard(
            title: 'Custom Letter',
            img: "assets/custom.png",
            color: Colors.blue),
        InkWell(
          onTap: () {
            setState(() {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Drawing(),
              ));
            });
          },
          child: CustomCard(
              title: 'Drawing',
              img: "assets/drawing.png",
              color: Colors.yellow),
        ),
        CustomCard(
            title: 'Homework', img: "assets/book.png", color: Color(0xff991E4F))
      ],
    );
  }
}
