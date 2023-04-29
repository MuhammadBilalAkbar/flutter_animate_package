import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class DemoPageThree extends StatelessWidget {
  const DemoPageThree({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: const Text('Demo Page Three')
              .animate()
              .shimmer(delay: 400.ms, duration: 3000.ms)
              .shake(hz: 4, curve: Curves.easeInOutCubic)
              .scaleXY(end: 1.1, duration: 600.ms)
              .then(delay: 600.ms)
              .scaleXY(end: 1 / 1.1),
        ),
      );
}
