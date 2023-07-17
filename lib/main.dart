import 'package:flutter/material.dart';
import 'package:kidzworld/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KidzWorld',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffFDECF3)),
        useMaterial3: true,
      ),
      home: SafeArea(child: HomeScreen()),
    );
  }
}
