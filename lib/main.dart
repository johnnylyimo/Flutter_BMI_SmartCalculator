import 'package:flutter/material.dart';
import 'package:flutter_bmi_smart_calculator/screens/splash_screen.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  // This widget is the root of your application.
  final TextTheme textTheme = TextTheme(
    body1: TextStyle(color: Colors.white),
  );

  final ColorScheme colorScheme = ColorScheme.light(
    primary: Colors.teal.shade500,
    onPrimary: Colors.teal.shade700,
    secondary: Colors.white,
    surface: Colors.teal,
    onSecondary: Colors.teal[900],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: textTheme,
        colorScheme: colorScheme,
        primaryColor: Colors.teal.shade500,
        scaffoldBackgroundColor: Colors.teal.shade200,
        accentColor: Colors.teal.shade700,
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
