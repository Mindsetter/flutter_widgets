import 'package:flutter/material.dart';

class CusRoundCorner extends StatelessWidget {
  const CusRoundCorner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            color: Colors.green,
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}
