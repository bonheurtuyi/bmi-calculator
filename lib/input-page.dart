import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card-content.dart';
import 'reusable-card.dart';
import 'constants.dart';

enum Gender { male, female }

Gender? selectedGender;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
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
                          ? kActiveCardColor
                          : kInActiveCardColor,
                      cardChild: const CardContent(
                        iconName: FontAwesomeIcons.mars,
                        textTitle: 'MALE',
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
                          ? kActiveCardColor
                          : kInActiveCardColor,
                      cardChild: const CardContent(
                        iconName: FontAwesomeIcons.venus,
                        textTitle: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kInActiveCardColor,
              cardChild: Container(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kInActiveCardColor,
                    cardChild: Container(),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kInActiveCardColor,
                    cardChild: Container(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0xFFEB1555),
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          )
        ],
      ),
    );
  }
}
