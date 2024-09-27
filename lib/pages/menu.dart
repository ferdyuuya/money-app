// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/layouts/appbar.dart'; // Assuming this is where HeaderBar is defined

class MenuPage extends StatelessWidget {
  MenuPage({super.key});
  
  final List<String> featureName = [
    'Add Balance',
    'History',
    'Last Month Spending',
    'Add Spending',
    'Support Us',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderBar(title: Text("Main Menu")),
      body: GridView.builder(
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
              print(featureName[index]);
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
        ),
      ),
    );
  }
}
