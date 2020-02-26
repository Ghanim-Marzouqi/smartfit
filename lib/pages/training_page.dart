import 'package:flutter/material.dart';
import 'package:smartfit/utilities/constants.dart';
import 'package:smartfit/services/timer/timer_service.dart';

class TrainingPage extends StatefulWidget {
  @override
  _TrainingPageState createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TrainingPage> {
  @override
  Widget build(BuildContext context) {
    TimerService timerService = TimerService.of(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            color: kPrimaryColor,
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: TabBar(
                      tabs: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "images/treadmill_icon.png",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("images/cross_trainer_icon.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("images/cycling_machine_icon.png"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/treadmill_bg.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: AnimatedBuilder(
                  animation: timerService, // listen to ChangeNotifier
                  builder: (context, child) {
                    // this part is rebuilt whenever notifyListeners() is called
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 75.0,
                          child: Image.asset('images/icon.png'),
                        ),
                        Text(
                          timerService.currentDuration.toString().split('.')[0],
                          style: TextStyle(
                            fontSize: 60.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        ButtonTheme(
                          minWidth: 150.0,
                          height: 50.0,
                          child: RaisedButton(
                            onPressed: !timerService.isRunning
                                ? timerService.start
                                : () {
                                    timerService.stop();
                                    Navigator.of(context)
                                        .pushNamed('RESULT_DETAILS');
                                  },
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
                              !timerService.isRunning ? 'Start' : 'Stop',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        ButtonTheme(
                          minWidth: 150.0,
                          height: 50.0,
                          child: RaisedButton(
                            onPressed: timerService.reset,
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
                              'Reset',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/cross_trainer_bg.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: AnimatedBuilder(
                  animation: timerService, // listen to ChangeNotifier
                  builder: (context, child) {
                    // this part is rebuilt whenever notifyListeners() is called
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 75.0,
                          child: Image.asset('images/icon.png'),
                        ),
                        Text(
                          timerService.currentDuration.toString().split('.')[0],
                          style: TextStyle(
                            fontSize: 60.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        ButtonTheme(
                          minWidth: 150.0,
                          height: 50.0,
                          child: RaisedButton(
                            onPressed: !timerService.isRunning
                                ? timerService.start
                                : () {
                              timerService.stop();
                              Navigator.of(context)
                                  .pushNamed('RESULT_DETAILS');
                            },
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
                              !timerService.isRunning ? 'Start' : 'Stop',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        ButtonTheme(
                          minWidth: 150.0,
                          height: 50.0,
                          child: RaisedButton(
                            onPressed: timerService.reset,
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
                              'Reset',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/cycling_machine_bg.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: AnimatedBuilder(
                  animation: timerService, // listen to ChangeNotifier
                  builder: (context, child) {
                    // this part is rebuilt whenever notifyListeners() is called
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 75.0,
                          child: Image.asset('images/icon.png'),
                        ),
                        Text(
                          timerService.currentDuration.toString().split('.')[0],
                          style: TextStyle(
                            fontSize: 60.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        ButtonTheme(
                          minWidth: 150.0,
                          height: 50.0,
                          child: RaisedButton(
                            onPressed: !timerService.isRunning
                                ? timerService.start
                                : () {
                              timerService.stop();
                              Navigator.of(context)
                                  .pushNamed('RESULT_DETAILS');
                            },
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
                              !timerService.isRunning ? 'Start' : 'Stop',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        ButtonTheme(
                          minWidth: 150.0,
                          height: 50.0,
                          child: RaisedButton(
                            onPressed: timerService.reset,
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
                              'Reset',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
