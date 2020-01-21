import 'package:flutter/material.dart';
import 'package:smartfit/services/timer/timer_service.dart';

class TimerServiceProvider extends InheritedWidget {
  const TimerServiceProvider({Key key, this.service, Widget child})
      : super(key: key, child: child);

  final TimerService service;

  @override
  bool updateShouldNotify(TimerServiceProvider old) => service != old.service;
}
