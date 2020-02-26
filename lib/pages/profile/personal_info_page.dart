import 'package:flutter/material.dart';
import 'package:smartfit/utilities/constants.dart';

class PersonalInfoPage extends StatefulWidget {
  @override
  _PersonalInfoPageState createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Personal Info'),),
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('BMI', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('25.8', style: TextStyle(
                  color: kAccentColor,
                ),
              ),
              trailing: Icon(
                Icons.accessibility, color: Colors.white, size: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
