import 'package:flutter/material.dart';
import 'package:myapp/styles.dart';
import 'package:myapp/pages/profile.dart';

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
            Navigator.push(
              context,
              SlidePageRoute(Profile()), // Use custom slide transition
            );
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