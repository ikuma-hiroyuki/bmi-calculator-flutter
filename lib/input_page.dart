import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/./icon_content.dart';
import 'package:bmi_calculator/./reusable_card.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class CardColor {
  static const double bottomContainerHeight = 80;
  static const Color activeCardColor = Color(0xFF1D1E33);
  static const Color inActiveCardColor = Color(0xFF111328);
  static const Color bottomContainerColor = Color(0xFFEB1555);
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.male
                          ? CardColor.activeCardColor
                          : CardColor.inActiveCardColor,
                      cardChild: IconContent(
                        label: 'MALE',
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.female
                          ? CardColor.activeCardColor
                          : CardColor.inActiveCardColor,
                      cardChild: IconContent(
                        label: 'FEMALE',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard(colour: CardColor.activeCardColor)),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(colour: CardColor.activeCardColor)),
                Expanded(
                    child: ReusableCard(colour: CardColor.activeCardColor)),
              ],
            ),
          ),
          Container(
            color: CardColor.bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: CardColor.bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
