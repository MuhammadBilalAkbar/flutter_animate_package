import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AnimationPageOne extends StatelessWidget {
  const AnimationPageOne({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // First two children have same output animation
              // 1st => Wrap widget
              Animate(
                effects: [
                  const FadeEffect(),
                  const SlideEffect(),
                  ShakeEffect(duration: 1000.ms),
                ],
                child: const Text('Both have same output'),
              ),
              // 2nd => Extension method
              const Text('Both have same output')
                  .animate()
                  .fade()
                  .slide()
                  .shake(duration: 1000.ms),
            ],
          ),
        ),
      );
}
