import 'package:flutter/material.dart';
import 'package:kidzworld/widgets/card.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25),
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
                'About Us                    ',
                style: TextStyle(
                  color: Color(0xff991E4F),
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              CustomCard(
                  title: "About",
                  img: "assets/info.png",
                  color: Color(0xff991E4F)),
              SizedBox(width: 10),
              CustomCard(
                  title: "Privacy Policy",
                  img: "assets/privacy.png",
                  color: Colors.green),
            ]),
          )
        ],
      ),
    ));
  }
}
