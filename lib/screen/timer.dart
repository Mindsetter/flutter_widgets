import 'dart:async';

import 'package:flutter/material.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  int timeLeft = 5;
  void timerStart() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (timeLeft > 0) {
          timeLeft--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              timeLeft == 0 ? 'Done' : timeLeft.toString(),
              style: const TextStyle(fontSize: 40),
            ),
            MaterialButton(
              color: Colors.red,
              onPressed: timerStart,
              child: const Text('Start Now'),
            )
          ],
        ),
      ),
    );
  }
}
