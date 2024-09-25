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
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Wrap the entire app in MaterialApp
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: HeaderBar(title: Text("Main Menu")),
        body: MenuPage(),
        // drawer: DrawerBar(),
        bottomNavigationBar: BottomNavbar(),
      ),
      routes: {
        '/profile': (context) => Profile(),
        '/about': (context) => AboutPage(),

      },
    );
  }}



