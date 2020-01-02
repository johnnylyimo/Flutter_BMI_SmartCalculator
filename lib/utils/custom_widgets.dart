import 'package:flutter/material.dart';
import 'package:flutter_bmi_smart_calculator/utils/constants.dart';

/*Refactor ReusableCard _ Upgraded be able to detect touch, passing Function as value of onPress
 Gesture Detector: wrapped inside ReusableCard, using High order function.
*/

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({@required this.color, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

// **************************************************************************\\
// The repeated container is extracted, avoid redundant
class IconContent extends StatelessWidget {
  final IconData iconName;
  final String label;
  IconContent({@required this.iconName, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconName,
          size: 48.0,
          color: Theme.of(context).colorScheme.secondary,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}

// **************************************************************************\\

/* create custom buttons instead using FloatActionButton
RawMaterialButton basis button class does not use the current Theme or ButtonTheme to compute default values for unspecified parameters. It's intended to be used for custom Material buttons that optionally incorporate defaults from the themes or from app-specific sources.
*/
// RoundIconButton as custom FloatingActionButton

class RoundIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        width: 36.0,
      ),
      shape: CircleBorder(),
      fillColor: Theme.of(context).colorScheme.onPrimary,
    );
  }
}
