import 'package:flutter/material.dart';

class IBMCalculateDialog extends StatefulWidget {
  @override
  _IBMCalculateDialogState createState() => _IBMCalculateDialogState();
}

class _IBMCalculateDialogState extends State<IBMCalculateDialog> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextFormField(),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextFormField(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text("Submitß"),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
