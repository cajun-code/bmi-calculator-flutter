import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Gender { male, female, none }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender = Gender.none;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ResuableCard(
                    color: (gender == Gender.male)
                        ? kCardColor
                        : kUnSelectedCardColor,
                    child: IconContent(
                      icon: FontAwesomeIcons.mars,
                      title: 'MALE',
                    ),
                    onPress: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                    color: (gender == Gender.female)
                        ? kCardColor
                        : kUnSelectedCardColor,
                    onPress: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    child: IconContent(
                      icon: FontAwesomeIcons.venus,
                      title: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ResuableCard(
              color: kCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('HEIGHT', style: kLabelTextStyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                    Text(height.toString(), style: kNumberTextStyle,),
                    Text('cm', style: kLabelTextStyle,),
                  ],),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: kLabelColor,
                      activeTrackColor: Colors.white,
                      thumbColor: kBottomBarColor,
                      overlayColor: kBottomBarColor.withAlpha(0x29),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue){
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ResuableCard(
                    color: kCardColor,
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                    color: kCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomBarHeight,
            color: kBottomBarColor,
          ),
        ],
      ),
    );
  }
}
