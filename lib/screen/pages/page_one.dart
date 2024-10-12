import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  final textStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    color: Colors.green[300],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Text(
                'Text Styling',
                style: textStyle,
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Hello Man',
                      style: TextStyle(fontSize: 20),
                    ),
                    TextSpan(
                        text: 'Very tired today',
                        style: TextStyle(fontStyle: FontStyle.italic))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
