import 'dart:async';
import 'package:flutter/material.dart';
import 'package:smartfit/utilities/constants.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    startTime();
    super.initState();
  }

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return Timer(_duration, navigatePage);
  }

  void navigatePage() {
    Navigator.of(context).pushReplacementNamed('DASHBOARD_PAGE');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        color: kAccentColor,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Hero(
          tag: 'hero',
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 150.0,
            child: Image.asset('images/logo.jpg'),
          ),
        ),
      ),
    );
  }
}
