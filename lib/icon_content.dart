import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String title;

  IconContent({this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 80),
        SizedBox(
          height: 15,
        ),
        Text(
          title,
          style:
              TextStyle(color: Color(0xff8d8e98), fontSize: 18),
        ),
      ],
    );
  }
}