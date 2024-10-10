import 'package:flutter/material.dart';
import 'package:flutter_widgets/screen/pages/page_one.dart';
import 'package:flutter_widgets/screen/pages/page_two.dart';

class PageViewCus extends StatefulWidget {
  const PageViewCus({super.key});

  @override
  State<PageViewCus> createState() => _PageViewCusState();
}

class _PageViewCusState extends State<PageViewCus> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: const [
          PageOne(),
          PageTwo(),
          PageOne(),
        ],
      ),
    );
  }
}
