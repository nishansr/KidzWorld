import 'package:flutter/material.dart';
import 'package:kidzworld/widgets/card.dart';
import 'package:url_launcher/url_launcher.dart';
import 'info_screen.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  Future<void> launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
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
              'About Us                    ',
              style: TextStyle(
                color: Color(0xff991E4F),
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(children: [
            InkWell(
              onTap: () {
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Info(),
                  ));
                });
              },
              child: CustomCard(
                  title: "About",
                  img: "assets/info.png",
                  color: Color(0xff991E4F)),
            ),
            SizedBox(width: 10),
            InkWell(
              onTap: () {
                const url =
                    'https://bprabin811.github.io/kidzworld-privacy-policy/';
                launchURL(url);
              },
              child: CustomCard(
                  title: "Privacy Policy",
                  img: "assets/privacy.png",
                  color: Colors.green),
            ),
          ])
        ],
      ),
    ));
  }
}
