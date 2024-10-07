import 'package:flutter/material.dart';
import 'package:flutter_widgets/screen/tab/tab_one.dart';
import 'package:flutter_widgets/screen/tab/tab_three.dart';
import 'package:flutter_widgets/screen/tab/tab_two.dart';

class CusTabBar extends StatelessWidget {
  const CusTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Bar'),
          centerTitle: true,
        ),
        body: const Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Level One',
                ),
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Level One',
                ),
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Level One',
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  TabOne(),
                  TabTwo(),
                  TabThree(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
