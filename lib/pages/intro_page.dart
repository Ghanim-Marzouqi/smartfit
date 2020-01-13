import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final pages = [
    PageViewModel(
      title: "Treadmill",
      body: "Track your speed and duration on the Treadmill",
      image: Center(
        child: Image.asset(
          'images/icon.png',
          height: 175.0,
        ),
      ),
      decoration: PageDecoration(
        boxDecoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/treadmill_bg.jpeg'),
            fit: BoxFit.fitHeight,
          ),
        ),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
        bodyTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontSize: 20,
        ),
      ),
    ),
    PageViewModel(
      title: "Cross Trainer",
      body: "Track your speed and duration on the Cross Trainer",
      image: Center(
        child: Image.asset(
          'images/icon.png',
          height: 175.0,
        ),
      ),
      decoration: PageDecoration(
        boxDecoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/treadmill_bg.jpeg'),
            fit: BoxFit.fitHeight,
          ),
        ),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
        bodyTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontSize: 20,
        ),
      ),
    ),
    PageViewModel(
      title: "Cycling Machine",
      body: "Track your speed and duration on the Cycling Machine",
      image: Center(
        child: Image.asset(
          'images/icon.png',
          height: 175.0,
        ),
      ),
      decoration: PageDecoration(
        boxDecoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/treadmill_bg.jpeg'),
            fit: BoxFit.fitHeight,
          ),
        ),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
        bodyTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontSize: 20,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          pages: pages,
          done: const Text(
            "Start",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          onDone: () =>
              Navigator.of(context).pushReplacementNamed('DASHBOARD_PAGE'),
        ),
      ),
    );
  }
}
