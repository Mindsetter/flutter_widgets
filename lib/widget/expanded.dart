import 'package:flutter/material.dart';

class CusExpanded extends StatelessWidget {
  const CusExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.deepPurple,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
              child: const Center(
                child: Text('Day 2'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.lightBlue,
            ),
          )
        ],
      ),
    );
  }
}
