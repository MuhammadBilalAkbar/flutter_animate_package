import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AnimationPageTwo extends StatelessWidget {
  const AnimationPageTwo({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // First two children have same output animation
            // 1st => delay property of scale
            const Text("Animation Page Two")
                .animate()
                .scale(duration: 1000.ms)
                .blur(delay: 1000.ms),
            // 1st => then effect
            const Text("Animation Page Two")
                .animate()
                .scale(duration: 1000.ms)
                .then()
                .blur(),
          ],
        ),
      ),
    );
  }
}
