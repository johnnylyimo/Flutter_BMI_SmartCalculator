import 'package:flutter/material.dart';
import 'package:flutter_bmi_smart_calculator/utils/constants.dart';
import 'package:flutter_bmi_smart_calculator/utils/custom_widgets.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Smart Calculator'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Text(
                  'Your Result',
                  style: Theme.of(context).textTheme.title,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: inactiveCardColor,
              ),
            )
          ]),
    );
  }
}