import 'package:flutter/material.dart';
import 'package:flutter_bmi_smart_calculator/utils/constants.dart';
import 'package:flutter_bmi_smart_calculator/utils/custom_widgets.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;

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
                alignment: Alignment.bottomCenter,
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
                    Text('Your BMI result is Normal'),
                    RaisedButton(
                      elevation: 10.0,
                      color: Theme.of(context).colorScheme.onPrimary,
                      onPressed: () {},
                      child: Text(
                        'SAVE RESULT',
                        style: kLabelTextStyle,
                      ),
                    )
                  ],
                ),
              ),
            ),
            FloatingActionButton.extended(
              backgroundColor: Theme.of(context).colorScheme.onPrimary,
              onPressed: () {
                Navigator.pop(context);
              },
              label: Text(
                'RE-CALCULATE',
                style: kLabelTextStyle,
              ),
            )
          ]),
    );
  }
}
