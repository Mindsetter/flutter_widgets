import 'package:flutter/material.dart';

class CustContainer extends StatelessWidget {
  final String child;
  const CustContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 200,
      color: Colors.green,
      child: Center(child: Text(child)),
    );
  }
}
