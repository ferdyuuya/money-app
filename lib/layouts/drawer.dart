
// ignore_for_file: prefer_const_constructors, unnecessary_import, unused_import

import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/main.dart';
import 'package:myapp/pages/about.dart';
import 'package:myapp/styles.dart';

class DrawerBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(172, 250, 223, 1),
      child: Column(
        children: [
          DrawerHeader(
            child: Text(
              "Fantia",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Poppins',
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                SlidePageRoute(AboutPage()), // Use custom slide transition
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
          ),
        ],
      ),
    );
  }
}