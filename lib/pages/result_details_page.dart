import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smartfit/services/timer/timer_service.dart';
import 'package:smartfit/utilities/constants.dart';

class ResultDetailsPage extends StatefulWidget {
  @override
  _ResultDetailsPageState createState() => _ResultDetailsPageState();
}

class _ResultDetailsPageState extends State<ResultDetailsPage> {
  var _radioGroup = '1';

  @override
  Widget build(BuildContext context) {
    TimerService timerService = TimerService.of(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title:
            Text(DateFormat("EEE, d MMM", "en_US").format(new DateTime.now())),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Treadmill',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 50.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Calories',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Expanded(
                        child: Text(''),
                      ),
                      Text(
                        '${timerService.calLoss} cal',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 10.0,
                    color: Colors.white,
                    thickness: 1.0,
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Distance',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Expanded(
                        child: Text(''),
                      ),
                      Text(
                        '0.0 km',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 10.0,
                    color: Colors.white,
                    thickness: 1.0,
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Time',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Expanded(
                        child: Text(''),
                      ),
                      Text(
                        timerService.currentDuration.toString().split('.')[0],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 10.0,
                    color: Colors.white,
                    thickness: 1.0,
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Text(
                  'Mood',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 10.0),
                Text(
                  'pick your mood',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 18.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "😄",
                        style: TextStyle(
                          fontSize: 40,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Active",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '5',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      Radio(
                        groupValue: _radioGroup,
                        onChanged: (value) {},
                        value: 5,
                        activeColor: Colors.white,
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '4',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      Radio(
                        groupValue: _radioGroup,
                        onChanged: (value) {},
                        value: 4,
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '3',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      Radio(
                        groupValue: _radioGroup,
                        onChanged: (value) {},
                        value: 3,
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '2',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      Radio(
                        groupValue: _radioGroup,
                        onChanged: (value) {},
                        value: 2,
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '1',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      Radio(
                        groupValue: _radioGroup,
                        onChanged: (value) {},
                        value: 1,
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "☹️",
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 40,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Tired",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              'Notes',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              child: Container(
                color: kAccentColor,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 3,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: ButtonTheme(
                minWidth: 150.0,
                height: 50.0,
                child: RaisedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  textColor: Colors.white,
                  color: Colors.grey.shade900,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 10.0,
                  ),
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: Colors.white),
                  ),
                  child: Text(
                    'Save',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
