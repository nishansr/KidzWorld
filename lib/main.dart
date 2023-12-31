//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:kidzworld/provider/providers.dart';
import 'package:kidzworld/screens/about_screen.dart';
import 'package:kidzworld/screens/fun_screen.dart';
import 'package:kidzworld/screens/home_screen.dart';
import 'package:kidzworld/screens/learn_screen.dart';
import 'package:kidzworld/widgets/bottom_nav.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final List<Widget> _screens = [
    HomeScreen(),
    Learn(),
    Fun(),
    About(),
  ];
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomIndex()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'KidzWorld',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffFDECF3)),
          useMaterial3: true,
        ),
        home: SafeArea(
            child: Consumer<BottomIndex>(
          builder: (context, nav, child) => Scaffold(
            backgroundColor: Color(0xffFCE4ED),
            body: _screens[nav.currentIndex],
            bottomNavigationBar: BottomNav(),
          ),
        )),
      ),
    );
  }
}
