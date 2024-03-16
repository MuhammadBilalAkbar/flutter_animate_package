import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AnimationPageThree extends StatelessWidget {
  const AnimationPageThree({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: const Text(
            'Animation Page Three',
            style: TextStyle(
              fontSize: 80,
              fontWeight: FontWeight.bold,
            ),
          )
              .animate()
              .scale(duration: 2000.ms)
              .shake(hz: 10, delay: 2000.ms, duration: 1000.ms)
              .shimmer(
            delay: 3000.ms,
            duration: 3000.ms,
            colors: [
              Colors.black,
              Colors.yellow,
              Colors.red,
              Colors.green,
              Colors.blue,
              Colors.black,
            ],
          ).blur(
            end: const Offset(20, 20),
            delay: 6000.ms,
            duration: 1000.ms,
          ),
        ),
      );
}
