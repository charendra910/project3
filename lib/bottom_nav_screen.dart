import 'dart:developer';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'call_screen.dart';
import 'chat_screen.dart';
import 'home_screen.dart';

class BottomNavScreen extends StatefulWidget {
  BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNevState();
}

class _BottomNevState extends State<BottomNavScreen> {
  int currentInd = 0;
  List pages = [Home_Screen(), ChatScreen(), CallScreen(),Home_Screen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentInd],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: [Icons.home, Icons.chat, Icons.call,Icons.home],
          activeIndex: currentInd,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          onTap: (index) => setState(() => currentInd = index),
        ));
  }
}
