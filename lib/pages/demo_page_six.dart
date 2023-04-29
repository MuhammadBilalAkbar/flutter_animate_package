import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class DemoPageSix extends StatelessWidget {
  const DemoPageSix({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Demo Page Seven'),
            const SizedBox(height: 20),
            Image.asset(
              'img.png',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const Text('Hello World!'),
          ],
        )
            .animate()
            .fade(delay: 1000.ms, duration: 500.ms)
            .slide()
            .shake(delay: 1000.ms, duration: 1000.ms),
      );
}
