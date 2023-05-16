import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AnimationPageFour extends StatelessWidget {
  const AnimationPageFour({super.key, required this.title});

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
              Container(
                color: Colors.black87,
                padding: const EdgeInsets.all(16),
                child: const Text(
                  'Demo Page Four',
                  style: TextStyle(color: Colors.white),
                ),
              )
                  .animate(
                    onPlay: (controller) => controller.loop(
                      count: 10,
                      reverse: true,
                    ),
                  )
                  .scaleXY(end: 1.1, curve: Curves.easeInOutCubic)
                  .tint(color: Colors.red, end: 0.6)
                  .elevation(end: 20),
              const SizedBox(height: 20),
              const Text("Horrible Pulsing Text")
                  .animate(
                      onPlay: (controller) => controller.repeat(reverse: true))
                  .fadeOut(curve: Curves.easeInOut),
            ],
          ),
        ),
      );
}
