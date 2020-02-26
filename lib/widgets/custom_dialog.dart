import 'package:flutter/material.dart';
import 'package:smartfit/utilities/constants.dart';

class CustomDialog extends StatefulWidget {

  final Widget dialog;

  CustomDialog({this.dialog});

  @override
  _CustomDialogState createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: kAccentColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: widget.dialog
    );
  }
}
