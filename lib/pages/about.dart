// Suggested code may be subject to a license. Learn more: ~LicenseLog:1349153846.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2993664880.
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/layouts/appbar.dart';
// import 'package:myapp/main.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderBar(
        title: Text('About'),
      ),
      body: Center(
        child: Text('This is the about page!'),
      ),
    );
  }
}
