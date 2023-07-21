import 'package:flutter/material.dart';

class Vehicles extends StatelessWidget {
  const Vehicles({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> vehicle = [
      'Car 1',
      'Car 2',
      'Car 3',
      'Car 4',
      'Car 5',
      'Car 6',
      'Car 7',
      'Car 8',
      'Car 9',
    ];
    List<String> vehicle_img = [
      "assets/vehicles/1.png",
      "assets/vehicles/2.png",
      "assets/vehicles/3.png",
      "assets/vehicles/4.png",
      "assets/vehicles/5.png",
      "assets/vehicles/6.png",
      "assets/vehicles/7.png",
      "assets/vehicles/8.png",
      "assets/vehicles/9.png",
    ];
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffFCE4ED),
      appBar: AppBar(
        title: Text('Vehicles',
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
        itemCount: vehicle.length,
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
                  Text(vehicle[index], style: TextStyle(fontSize: 30)),
                  Image.asset(vehicle_img[index], height: 50),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
