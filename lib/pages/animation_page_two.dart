import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AnimationPageTwo extends StatelessWidget {
  const AnimationPageTwo({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: const Text('Demo Page Two')
              .animate()
              .then()
              .fade(delay: 500.ms, duration: 900.ms, begin: .1, end: .8)
              .then()
              .scale()
              .then()
              .slideY(curve: Curves.easeIn, begin: 2, end: 5)
              .then()
              .tint(color: Colors.amber)
              .then()
              .shake(duration: 300.ms),
        ),
      );
}
