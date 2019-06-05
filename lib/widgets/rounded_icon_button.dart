import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  
  final IconData icon;
  final Function onPressed;

  RoundedIconButton({this.icon, this.onPressed});
  
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: kLabelColor,
    );
  }
}