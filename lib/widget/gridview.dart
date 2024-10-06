import 'package:flutter/material.dart';

class CusGridView extends StatelessWidget {
  const CusGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 10,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: 40,
              color: Colors.blue,
            ),
          );
        },
      ),
    );
  }
}
