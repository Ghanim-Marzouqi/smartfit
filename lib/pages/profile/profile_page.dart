import 'package:flutter/material.dart';
import 'package:smartfit/utilities/constants.dart';
import 'package:smartfit/widgets/custom_dialog.dart';
import 'package:smartfit/widgets/custom_radio_button.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ListTile(
              title: Text('PERSONAL INFO', style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,),),
              onTap: () => Navigator.of(context).pushNamed('PERSONAL_INFO'),
            ),
            ListTile(
              title: Text('SETTINGS', style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,),),
            ),
            ListTile(
              title: Text('Language', style: TextStyle(color: Colors.white,),),
              subtitle: Text('English', style: TextStyle(color: kAccentColor),),
              trailing: Icon(Icons.language, color: Colors.white, size: 30.0,),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) =>
                      CustomDialog(dialog: _languageDialog(context)),
                );
              },
            ),
            ListTile(
              title: Text(
                'Notification', style: TextStyle(color: Colors.white),),
              subtitle: Text('On', style: TextStyle(color: kAccentColor),),
              trailing: Icon(
                Icons.notifications_active, color: Colors.white, size: 30.0,
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) =>
                      CustomDialog(dialog: _notificationDialog(context)),
                );
              },
            ),
            ListTile(
              title: Text('CONTACT US', style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),),
            ),
            ListTile(
              title: Text('HELP', style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _languageDialog(BuildContext context) {
  return Container(
    height: 200.0,
    padding: EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('Select Langauge', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
        Column(
          children: <LabeledRadio>[
            LabeledRadio(
              label: 'English',
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              value: true,
              groupValue: true,
              onChanged: (bool newValue) {},
            ),
            LabeledRadio(
              label: 'العربية',
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              value: false,
              groupValue: true,
              onChanged: (bool newValue) {},
            ),
          ],
        ),
        ButtonTheme(
          minWidth: 100.0,
          height: 30.0,
          child: RaisedButton(
            onPressed: () {},
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
            child: Text('OK'),
          ),
        ),
      ],
    ),
  );
}

Widget _notificationDialog(BuildContext context) {
  return Container(
    height: 200.0,
    padding: EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('Set Notification', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
        Column(
          children: <LabeledRadio>[
            LabeledRadio(
              label: 'On',
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              value: true,
              groupValue: true,
              onChanged: (bool newValue) {},
            ),
            LabeledRadio(
              label: 'Off',
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              value: false,
              groupValue: true,
              onChanged: (bool newValue) {},
            ),
          ],
        ),
        ButtonTheme(
          minWidth: 100.0,
          height: 30.0,
          child: RaisedButton(
            onPressed: () {},
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
            child: Text('OK'),
          ),
        ),
      ],
    ),
  );
}
