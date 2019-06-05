import 'package:flutter/material.dart';

class ResuableCard extends StatelessWidget {
  ResuableCard({@required this.color, this.child, this.onPress});
  final Color color;
  final Widget child;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15),
        child: child,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}