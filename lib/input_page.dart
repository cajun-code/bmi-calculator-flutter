import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';


const double bottomBarHeight = 80;
const Color bottomBarColor = Color(0xffe7144c);
const Color cardColor = Color(0xff1d1f32);
const unSelectedCardColor = Color(0xff11131e);

enum Gender{male, female, none}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender = Gender.none;

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
                      color: (gender == Gender.male)? cardColor : unSelectedCardColor,
                      child: IconContent(icon: FontAwesomeIcons.mars, title: 'MALE',),
                      onPress: (){
                        setState(() {
                          gender = Gender.male;
                        });
                      },
                    ),
                ),
                Expanded(
                  child: ResuableCard(
                    color: (gender == Gender.female)? cardColor : unSelectedCardColor,
                    onPress: (){
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
              color: cardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ResuableCard(
                    color: cardColor,
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                    color: cardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomBarHeight,
            color: bottomBarColor,
          ),
        ],
      ),
    );
  }
}




