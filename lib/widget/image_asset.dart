import 'package:flutter/material.dart';

class ImageAsset extends StatelessWidget {
  const ImageAsset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 300,
            height: 300,
            color: Colors.blue,
            child: Image.asset(
              'images/mu.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
