import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class DemoPageFive extends StatefulWidget {
  const DemoPageFive({super.key, required this.title});

  final String title;

  @override
  State<DemoPageFive> createState() => _DemoPageFiveState();
}

class _DemoPageFiveState extends State<DemoPageFive> {
  bool toggle = false;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => setState(() => toggle = !toggle),
              child: const Text('Demo Page Five. Click Me!')
                  .animate(target: toggle ? 1 : 0)
                  .scaleXY(end: 2),
            ),
          ),
        ),
      );
}
