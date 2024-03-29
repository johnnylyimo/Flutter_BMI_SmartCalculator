import 'package:flutter/material.dart';
import 'package:flutter_bmi_smart_calculator/screens/home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlutterLogo(
            colors: Theme.of(context).colorScheme.surface,
            size: 300,
          ),
          Text(
            'BMI Smart Calculator',
            style: TextStyle(
              fontSize: 28.0,
              color: Theme.of(context).colorScheme.onSecondary,
              fontWeight: FontWeight.w900,
            ),
          )
        ],
      ),
    );
  }
}
