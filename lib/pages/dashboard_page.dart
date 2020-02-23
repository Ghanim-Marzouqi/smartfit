import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smartfit/pages/profile_page.dart';
import 'package:smartfit/pages/results_page.dart';
import 'package:smartfit/pages/statistics_page.dart';
import 'package:smartfit/pages/training_page.dart';
import 'package:smartfit/utilities/user_basic_data.dart';
import 'package:smartfit/widgets/bottom_navigation_menu.dart';
import 'package:smartfit/widgets/ibm_calculate_dialog.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 0;
  final _pageController = PageController();
  String _pageTitle = '';
  UserBasicData userData;

  @override
  void initState() {
    super.initState();

    _pageTitle = 'Train';

    Future.delayed(Duration.zero, () => _pageController.jumpToPage(0));
    Future.delayed(Duration(seconds: 3), () async {
      userData = await UserBasicData.getUserBasicData();
      if (userData == null) {
        print('IBM Dialog');
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return IBMCalculateDialog();
          },
        );
      }
    });
  }

  // method to render chosen page from drawer
  void _navigateSelectedPage(BuildContext context, int idx) {
    switch (idx) {
      case 0: // train page
        _pageTitle = 'Train';
        _pageController.jumpToPage(idx);
        break;
      case 1: // results page
        _pageTitle = 'Results';
        _pageController.jumpToPage(idx);
        break;
      case 2: // statistics page
        _pageTitle = 'Statistics';
        _pageController.jumpToPage(idx);
        break;
      case 3: // profile page
        _pageTitle = 'Profile';
        _pageController.jumpToPage(idx);
        break;
      default: // profile page
        _pageTitle = 'Train';
        _pageController.jumpToPage(0);
    }
  }

  // method to render chosen page from bottom navigation bar
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    _navigateSelectedPage(context, index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_pageTitle)),
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          children: <Widget>[
            TrainingPage(),
            ResultsPage(),
            StatisticsPage(),
            ProfilePage(),
          ],
          physics: NeverScrollableScrollPhysics(),
        ),
      ),
      bottomNavigationBar: BottomNavigationMenu(
        idx: _currentIndex,
        onItemSelected: _onItemTapped,
      ),
    );
  }
}
