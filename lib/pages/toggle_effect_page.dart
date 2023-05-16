import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ToggleEffectPage extends StatelessWidget {
  const ToggleEffectPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Animate().toggle(
            duration: 5.seconds,
            builder: (_, value, __) => Text(value ? 'Before' : 'After'),
          ),
        ),
      );
}
