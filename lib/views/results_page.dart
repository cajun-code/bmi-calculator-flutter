import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Results',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ResuableCard(
                color: kCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Normal',
                      style: kResultTextStyle,
                    ),
                    Text(
                      '28.7',
                      style: kResultNumberTextStyle,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque rutrum, erat nec venenatis ullamcorper, velit dui auctor quam, sit amet sodales enim dui in risus.',
                        style: kBodyTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              title: "RE-CALCULATE",
              onPress: (){
                Navigator.pop(context);
              },
            ),
          ],
        ));
  }
}
