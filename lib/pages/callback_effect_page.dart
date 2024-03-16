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
              const Text('Callback Effect Page')
                  .animate()
                  .fadeIn(duration: 2000.ms)
                  .callback(
                    duration: 1000.ms,
                    // We can call any method here
                    callback: (hello) => debugPrint('method call'),
                  ),
            ],
          ),
        ),
      );
}
