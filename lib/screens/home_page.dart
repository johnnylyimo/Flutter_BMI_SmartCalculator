import 'package:flutter/material.dart';
import 'package:flutter_bmi_smart_calculator/utils/custom_widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color activeCardColor = Colors.teal.shade500;
Color inactiveCardColor = Colors.teal.shade300;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI Smart Calculator'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: inactiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: inactiveCardColor,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: inactiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: inactiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: inactiveCardColor,
                  ),
                )
              ],
            ),
          ),
          FloatingActionButton.extended(
            onPressed: () {},
            label: Text('CALCULATE YOUR BMI'),
          )
        ],
      ),
    );
  }
}
