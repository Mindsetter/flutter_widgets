import 'package:flutter/material.dart';
import 'package:flutter_widgets/widget/cus_container.dart';

class CusListView extends StatelessWidget {
  CusListView({super.key});

  final List posts = [
    'Post One',
    'Post Two',
    'Post Three',
    'Post Four',
  ];

  final List story = [
    'Story 1',
    'Story 2',
    'Story 3',
    'Story 4',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 150,
              child: ListView.builder(
                  itemCount: story.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Center(child: Text(story[index])),
                    );
                  }),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return CustContainer(
                    child: posts[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
