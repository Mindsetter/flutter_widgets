import 'package:flutter/material.dart';

class SimpleSlider extends StatefulWidget {
  const SimpleSlider({super.key});

  @override
  State<SimpleSlider> createState() => _SimpleSliderState();
}

class _SimpleSliderState extends State<SimpleSlider> {
  //create variable
  double _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              _currentValue.toStringAsFixed(0),
              style: const TextStyle(
                fontSize: 28,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Slider(
                min: 0,
                max: 100,
                label: _currentValue.toStringAsFixed(0),
                activeColor: Colors.red,
                thumbColor: Colors.deepPurple,
                inactiveColor: Colors.grey[300],
                value: _currentValue,
                onChanged: (value) {
                  setState(() {
                    _currentValue = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
