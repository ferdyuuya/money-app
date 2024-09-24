// ignore_for_file: , unnecessary_import, prefer_const_constructors, unused_import

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

void userTapped(){
  log("User Tapped");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const List productName = [
    'Patreon',
    'Tokopedia',
    'Twitter',
    'Spotify',
    'Fantia',
    'Google',
    'Angkasa Pura Support',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(232, 255, 206, 20),
        appBar: AppBar(
          title: Text("My App Bar"),
          backgroundColor: Color.fromRGBO(172, 250, 223, 10),
          foregroundColor: Colors.black87,
          elevation: 0,
          shadowColor: Colors.transparent,
          centerTitle: true,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.logout),
            )
          ],
        ),
        body: GridView.builder(
          itemCount: productName.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.only(
              top: 10,
              bottom: 10,
              left: 8,
              right: 8,
            ),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color.fromRGBO(148, 173, 215, 10),
            ),
            child: GestureDetector(
              onDoubleTap: userTapped,
              child: Center(
                child: Text(
                  productName[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
