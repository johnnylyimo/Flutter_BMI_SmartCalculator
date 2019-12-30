import 'package:flutter/material.dart';

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
                  child: null,
                ),
                Expanded(
                  child: null,
                )
              ],
            ),
          ),
          Expanded(
            child: null,
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: null,
                ),
                Expanded(
                  child: null,
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
