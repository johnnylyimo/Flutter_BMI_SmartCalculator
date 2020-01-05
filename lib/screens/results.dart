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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Text(
                  'Your Result',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.title,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: inactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Normal',
                      style: kResultTextStyle,
                    ),
                    Text(
                      '25.3',
                      style: kBMIValueTextStyle,
                    ),
                    Text('Your BMI result is Normal')
                  ],
                ),
              ),
            ),
            FloatingActionButton.extended(
              backgroundColor: Theme.of(context).colorScheme.onPrimary,
              onPressed: null,
              label: Text(
                'RE CALCULATE',
                style: kLabelTextStyle,
              ),
            )
          ]),
    );
  }
}
