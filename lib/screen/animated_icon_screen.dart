import 'package:flutter/material.dart';

class AnimatedIconScreen extends StatefulWidget {
  const AnimatedIconScreen({super.key});

  @override
  State<AnimatedIconScreen> createState() => _AnimatedIconScreenState();
}

class _AnimatedIconScreenState extends State<AnimatedIconScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    super.initState();
  }

  bool videoPlayer = false;

  void iconTapped() {
    if (videoPlayer == false) {
      _animationController.forward();
      videoPlayer = true;
    } else {
      _animationController.reverse();
      videoPlayer = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        title: const Text('App Bar'),
        centerTitle: true,
        foregroundColor: Colors.white,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: const [
          Icon(Icons.share),
        ],
      ),
      body: Center(
        child: GestureDetector(
          onTap: iconTapped,
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: _animationController,
            size: 90,
          ),
        ),
      ),
    );
  }
}
