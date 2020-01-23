import 'package:flutter/material.dart';
import 'package:smartfit/utilities/constants.dart';

class StatisticsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Text(
          'Statistics Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
