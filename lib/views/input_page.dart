import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/widgets/icon_content.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'results_page.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/rounded_icon_button.dart';

enum Gender { male, female, none }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender = Gender.none;
  int height = 180;
  int weight = 100;
  int age = 30;

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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('WEIGHT', style: kLabelTextStyle,),
                        Text(weight.toString(), style: kNumberTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundedIconButton(icon: FontAwesomeIcons.minus, onPressed: (){
                              setState(() {
                                weight--;
                              });
                            },),
                            SizedBox(width: 10,),
                            RoundedIconButton(icon: FontAwesomeIcons.plus, onPressed: (){
                              setState(() {
                                weight++;
                              });
                            },),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                    color: kCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('AGE', style: kLabelTextStyle,),
                        Text(age.toString(), style: kNumberTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundedIconButton(icon: FontAwesomeIcons.minus, onPressed: (){
                              setState(() {
                                age--;
                              });
                            },),
                            SizedBox(width: 10,),
                            RoundedIconButton(icon: FontAwesomeIcons.plus, onPressed: (){
                              setState(() {
                                age++;
                              });
                            },),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          new BottomButton(
            title: "CALCULATE",
            onPress:  (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ResultsPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}



