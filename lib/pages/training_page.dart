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
    var timerService = TimerService.of(context);
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
              color: kBackgroundColor,
              child: Center(
                child: AnimatedBuilder(
                  animation: timerService, // listen to ChangeNotifier
                  builder: (context, child) {
                    // this part is rebuilt whenever notifyListeners() is called
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          timerService.currentDuration.toString().split('.')[0],
                          style: TextStyle(
                            fontSize: 50.0,
                            color: Colors.white,
                          ),
                        ),
                        RaisedButton(
                          onPressed: !timerService.isRunning
                              ? timerService.start
                              : timerService.stop,
                          child:
                              Text(!timerService.isRunning ? 'Start' : 'Stop'),
                        ),
                        RaisedButton(
                          onPressed: timerService.reset,
                          child: Text('Reset'),
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
            Container(
              color: kBackgroundColor,
              child: Center(
                child: Text(
                  "Cross Trainer",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              color: kBackgroundColor,
              child: Center(
                child: Text(
                  "Cycling Machine",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
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
