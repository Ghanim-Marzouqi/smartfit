import 'package:flutter/material.dart';
import 'package:smartfit/utilities/constants.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('RESULT_DETAILS'),
              child: Card(
                color: kAccentColor,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Image(
                        image: AssetImage('images/treadmill.png'),
                      ),
                      title: Text('Treadmill'),
                      subtitle: Text('See Your Results'),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('RESULT_DETAILS'),
              child: Card(
                color: kAccentColor,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Image(
                        image: AssetImage('images/cross_trainer.png'),
                      ),
                      title: Text('Cross Trainer'),
                      subtitle: Text('See Your Resuls'),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('RESULT_DETAILS'),
              child: Card(
                color: kAccentColor,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Image(
                        image: AssetImage('images/cycling.png'),
                      ),
                      title: Text('Cycling Machine'),
                      subtitle: Text('See Your Resuls'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
