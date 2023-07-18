import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFCE4ED),
        appBar: AppBar(
          backgroundColor: Color(0xffFCE4ED),
          iconTheme: IconThemeData(
            size: 30,
            color: Color(0xff991E4F),
          ),
          title: Text(
            'About Us',
            style: TextStyle(
              color: Color(0xff991E4F),
              fontSize: 26,
            ),
          ),
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Image.asset("assets/image.png", height: 60),
              SizedBox(height: 20),
              Text(
                'Learn With Fun',
                style: TextStyle(
                  color: Color(0xff991E4F),
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Welcome to KidzWorld!\nOur app offers a fun and interactive way for kids to learn tracing, recognize letters, pronounce them, and explore maths concepts like addition and subtraction. They can also discover various animals, birds, vehicles, flowers, and more. Additionally, our app features entertaining and logic-based games to enhance cognitive skills and critical thinking.\nJoin us now and embark on a captivating learning adventure!',
                style: TextStyle(
                  fontSize: 15,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 30),
              Text(
                'Email us at kidzworld095@gmail.com for support or feedback.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 30),
              Text(
                'Copyright \u00A9 2023 ProWin',
                style: TextStyle(
                  color: Color(0xff991E4F),
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ));
  }
}
