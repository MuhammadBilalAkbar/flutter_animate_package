import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SwapEffectPage extends StatelessWidget {
  const SwapEffectPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: const Text('Before').animate().swap(
                duration: 900.ms,
                builder: (context, widget) => const Text('After'),
              ),
        ),
      );
}
