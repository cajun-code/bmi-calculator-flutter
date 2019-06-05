import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  
  final String title;
  final Function onPress;

BottomButton({this.title, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Center(child: Text(title, style: kButtonTextStyle,)),
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: kBottomBarHeight,
        color: kBottomBarColor,
      ),
      onTap: onPress,
    );
  }
}