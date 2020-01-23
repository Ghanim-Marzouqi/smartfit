import 'package:flutter/material.dart';
import 'package:smartfit/utilities/constants.dart';

class ResultDetailsPage extends StatefulWidget {
  @override
  _ResultDetailsPageState createState() => _ResultDetailsPageState();
}

class _ResultDetailsPageState extends State<ResultDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: Text('Result Details'),
      ),
      body: Center(
        child: Text(
          "Result Details Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
