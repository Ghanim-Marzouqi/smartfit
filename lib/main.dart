import 'package:flutter/material.dart';
import 'package:smartfit/utilities/constants.dart';
import 'package:smartfit/services/timer/timer_service.dart';
import 'package:smartfit/services/timer/timer_service_provider.dart';

// pages
import 'package:smartfit/pages/splash_page.dart';
import 'package:smartfit/pages/dashboard_page.dart';
import 'package:smartfit/pages/training_page.dart';
import 'package:smartfit/pages/result_details_page.dart';

void main() {
  final timerService = TimerService();
  runApp(
    TimerServiceProvider(
      service: timerService,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Fit',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: kPrimaryColor,
          actionsIconTheme: IconThemeData(
            color: Colors.white,
            opacity: 1.0,
          ),
          textTheme: TextTheme(
            body1: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        primaryColor: kPrimaryColor,
        secondaryHeaderColor: kPrimaryColor,
        accentColor: kPrimaryColor,
        unselectedWidgetColor: Colors.white,
        textTheme: TextTheme(
          body1: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      routes: <String, WidgetBuilder>{
        'DASHBOARD_PAGE': (BuildContext context) => DashboardPage(),
        'TRAINING_PAGE': (BuildContext context) => TrainingPage(),
        'RESULT_DETAILS': (BuildContext context) => ResultDetailsPage(),
      },
    );
  }
}
