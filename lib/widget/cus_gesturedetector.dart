import 'package:flutter/material.dart';

class CusGesDector extends StatefulWidget {
  const CusGesDector({super.key});

  @override
  State<CusGesDector> createState() => _CusGesDectorState();
}

class _CusGesDectorState extends State<CusGesDector> {
  int chances = 0;
  void _increasecount() {
    setState(() {
      chances++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have $chances chances',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 60),
            GestureDetector(
                onTap: _increasecount,
                child: Container(
                  color: Colors.green,
                  height: 60,
                  width: 100,
                  child: const Center(child: Text('Tap Here')),
                ))
          ],
        ),
      ),
    );
  }
}
