import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class BottomNavigationMenu extends StatelessWidget {
  final GlobalKey _bottomNavigationKey = GlobalKey();

  // attributes
  final int idx;
  final Function onItemSelected;

  // constructor
  BottomNavigationMenu({this.idx, this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      key: _bottomNavigationKey,
      backgroundColor: Colors.transparent,
      selectedIndex: idx,
      onItemSelected: onItemSelected,
      items: [
        BottomNavyBarItem(
          icon: Icon(Icons.fitness_center),
          title: Text('Train'),
          activeColor: Colors.grey.shade900,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.info),
          title: Text('Results'),
          activeColor: Colors.grey.shade900,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.assessment),
          title: Text('Statistics'),
          activeColor: Colors.grey.shade900,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.person),
          title: Text('Profile'),
          activeColor: Colors.grey.shade900,
        ),
      ],
    );
  }
}
