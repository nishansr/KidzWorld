import 'package:flutter/material.dart';

class Birds extends StatelessWidget {
  const Birds({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> bird = [
      'Bird 1',
      'Bird 2',
      'Bird 3',
      'Bird 4',
      'Bird 5',
      'Bird 6',
      'Bird 7',
      'Bird 8',
      'Bird 9',
    ];
    List<String> bird_img = [
      "assets/birds/1.png",
      "assets/birds/2.png",
      "assets/birds/3.png",
      "assets/birds/4.png",
      "assets/birds/5.png",
      "assets/birds/6.png",
      "assets/birds/7.png",
      "assets/birds/8.png",
      "assets/birds/9.png",
    ];
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffFCE4ED),
      appBar: AppBar(
        title: Text('Birds',
            style: TextStyle(
              color: Color(0xff991E4F),
            )),
        backgroundColor: Color(0xffFCE4ED),
        iconTheme: IconThemeData(
          size: 30,
          color: Color(0xff991E4F),
        ),
      ),
      body: ListView.builder(
        itemCount: bird.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: w / 5,
              width: w / 7,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 5),
                        spreadRadius: 5,
                        blurRadius: 3)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(bird[index], style: TextStyle(fontSize: 30)),
                  Image.asset(bird_img[index], height: 30),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
