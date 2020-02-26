import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smartfit/utilities/constants.dart';

class IBMCalculateDialog extends StatefulWidget {
  @override
  _IBMCalculateDialogState createState() => _IBMCalculateDialogState();
}

class _IBMCalculateDialogState extends State<IBMCalculateDialog> {
  final _formKey = GlobalKey<FormState>();
  String dropdownValue = 'M';

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: kAccentColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Container(
        height: 380.0,
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Calculate IBM', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0),
            ListTile(
              title: Text("Age", style: TextStyle(fontWeight: FontWeight.bold),),
              trailing: Container(
                width: 50.0,
                height: 30.0,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0)
                    )
                  ),
                ),
              )
            ),
            ListTile(
                title: Text("Height", style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('in kilogram'),
                trailing: Container(
                  width: 50.0,
                  height: 30.0,
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0)
                        )
                    ),
                  ),
                )
            ),
            ListTile(
                title: Text('Weight', style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('in kilogram'),
                trailing: Container(
                  width: 50.0,
                  height: 30.0,
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0)
                        )
                    ),
                  ),
                )
            ),
            ListTile(
                title: Text("Gender", style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Container(
                  width: 50.0,
                  height: 30.0,
                  color: Colors.white,
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>['M', 'F']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
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
                child: Text('Calculte IBM'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
