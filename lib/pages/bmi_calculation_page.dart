import 'package:flutter/material.dart';
import 'package:smartfit/utilities/user_basic_data.dart';
import 'package:smartfit/widgets/bmi_calculate_dialog.dart';

class IBMCalculationPage extends StatefulWidget {
  @override
  _IBMCalculationPageState createState() => _IBMCalculationPageState();
}

class _IBMCalculationPageState extends State<IBMCalculationPage> {
  UserBasicData userData;
  bool isIBMFound = false;

  @override
  void initState() {
    _checkUserIBM(context);
    super.initState();
  }

  void _checkUserIBM(BuildContext context) async {
    userData = await UserBasicData.getUserBasicData();
    if (userData == null) {
      isIBMFound = false;
    } else {
      isIBMFound = true;
    }
  }

  @override
  Widget build(BuildContext context) {

    var body = isIBMFound ? Container(
      child: Text("User IBM Registered"),
    ) : showDialog(
      context: context,
      builder: (BuildContext context) => IBMCalculateDialog(),
    );

    return Scaffold(
      body: body,
    );
  }
}
