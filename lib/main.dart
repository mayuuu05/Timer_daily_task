import 'package:flutter/material.dart';

void main() {
  runApp(const TimerDailyTask());
}

class TimerDailyTask extends StatefulWidget {
  const TimerDailyTask({super.key});

  @override
  State<TimerDailyTask> createState() => _TimerDailyTaskState();
}

class _TimerDailyTaskState extends State<TimerDailyTask> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
    );
  }
}
