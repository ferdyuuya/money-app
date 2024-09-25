// ignore_for_file: prefer_const_constructors, unused_import

import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/pages/profile.dart'; // Ensure the path to Profile is correct

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
          body: MainBody(),
          drawer: DrawerBar(),           
        ),
        routes: {
          '/profile': (context) => Profile(),
        });
  }
}

// This widget now serves as the AppBar
// ignore: use_key_in_widget_constructors
class HeaderBar extends StatelessWidget implements PreferredSizeWidget {
  const HeaderBar({Key? key, required this.title}) : super(key: key);

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(172, 250, 223, 1),
      foregroundColor: Colors.black87,
      elevation: 0,
      shadowColor: Colors.transparent,
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.account_circle_outlined),
          onPressed: () {
            Navigator.pushNamed(context, '/profile');
          },
        )
      ],
      title: title,
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight); // Required for AppBar sizing
}

class MainBody extends StatelessWidget {
  List<String> featureName = [
    'Add Balance',
    'History',
    'Last Month Spending',
    'Add Spending',
    'Support Us',
  ];

  void debugLog() {
    log("sup!");
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: featureName.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color.fromRGBO(148, 173, 215, 1),
              ),
              child: GestureDetector(
                onTap: () {
                  log(featureName[index]);
                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      featureName[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ));
  }
}

class DrawerBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(a, r, g, b)
    )
  }
}
