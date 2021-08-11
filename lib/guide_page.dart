import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shellcode_task/Screens/Screen2.dart';
import 'package:shellcode_task/Screens/Screen3.dart';
import 'package:shellcode_task/Screens/Screen4.dart';
import 'package:shellcode_task/Screens/home%20page.dart';

class Guide_page extends StatefulWidget {

  @override
  _Guide_pageState createState() => _Guide_pageState();
}

class _Guide_pageState extends State<Guide_page> {

  int _pageIndex = 0;

  List<Widget> tabPages = [
    Services(),
    Screen2(),
    Screen3(),
    Screen4(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        body: Center(child: tabPages.elementAt(_pageIndex)),

        bottomNavigationBar: Container(
          padding: EdgeInsets.only(top: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
            gradient: LinearGradient(
              colors: [Color(0xFF012C6C), Color(0xFFC9002B)]
            ),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _pageIndex,
            onTap: _onItemTapped,
            backgroundColor: Colors.transparent,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Image.asset("images/home.png"), label: ""),
              BottomNavigationBarItem(icon: Image.asset("images/message.png"), label: ""),
              BottomNavigationBarItem(icon: Image.asset("images/kart.png"), label: ""),
              BottomNavigationBarItem(icon: Image.asset("images/man.png"), label: ""),
            ],

          ),
        ),
      ),
    );
  }
}