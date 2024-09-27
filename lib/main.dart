// ignore_for_file: prefer_const_constructors, unused_import, unnecessary_import

import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/layouts/bottom_navbar.dart';
import 'package:myapp/pages/menu.dart';
import 'package:myapp/pages/profile.dart';
import 'package:myapp/pages/about.dart';
import 'package:myapp/layouts/drawer.dart';
import 'package:myapp/layouts/appbar.dart';
import 'package:myapp/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _navigateNavBar (int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  final List _pagesApp = [
    MenuPage(),
    AboutPage(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    // Wrap the entire app in MaterialApp
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _pagesApp[_selectedIndex],
        // drawer: DrawerBar(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateNavBar,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'About',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.logout),
            //   label: 'Logout',
            // ),
          ],),
      ),
      routes: {
        '/profile': (context) => Profile(),
        '/about': (context) => AboutPage(),
      },
    );
  }
}
