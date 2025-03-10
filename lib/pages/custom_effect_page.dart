import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CustomEffectPage extends StatelessWidget {
  const CustomEffectPage({super.key, required this.title});

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
              const Text('Custom Effect Page').animate().custom(
                    duration: 5.seconds,
                    builder: (_, value, child) => Container(
                      color: Color.lerp(Colors.red, Colors.blue, value),
                      padding: const EdgeInsets.all(8),
                      child: child,
                    ),
                  ),
              Animate()
                  .custom(
                    duration: 5.seconds,
                    begin: 10,
                    end: 0,
                    builder: (_, value, __) => Text(
                      value.round().toString(),
                    ),
                  )
                  .fadeOut(),
            ],
          ),
        ),
      );
}
