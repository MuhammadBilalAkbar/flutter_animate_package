import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CallbackEffectPage extends StatelessWidget {
  const CallbackEffectPage({super.key, required this.title});

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
              const Text('Hello').animate().fadeIn(duration: 600.ms).callback(
                    duration: 300.ms,
                    callback: (_) => debugPrint('halfway'),
                  ),
              const Text('Hello')
                  .animate()
                  .scale(delay: 200.ms, duration: 400.ms)
                  .callback(
                    callback: (_) => debugPrint('scale is done'),
                  ),
            ],
          ),
        ),
      );
}
