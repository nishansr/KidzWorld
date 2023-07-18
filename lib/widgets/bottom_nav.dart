import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:kidzworld/provider/providers.dart';
import 'package:provider/provider.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomIndex>(
      builder: (context, nav, child) => Container(
        color: Color(0xff991E4F),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
          child: GNav(
            selectedIndex: nav.currentIndex,
            onTabChange: (value) => nav.changeIndex(value),
            color: Colors.white,
            activeColor: Colors.yellow,
            tabBorderRadius: 15,
            tabBackgroundColor: const Color.fromARGB(97, 255, 255, 255),
            gap: 8,
            backgroundColor: Color(0xff991E4F),
            tabs: [
              GButton(icon: Icons.home, text: 'Home'),
              GButton(icon: Icons.school, text: 'Learn'),
              GButton(icon: Icons.games, text: 'Fun'),
              GButton(icon: Icons.info, text: 'About'),
            ],
          ),
        ),
      ),
    );
  }
}
