import 'package:flutter/material.dart';

import '/pages/demo_page_one.dart';
import '/pages/demo_page_two.dart';
import '/pages/demo_page_three.dart';
import '/pages/demo_page_four.dart';
import '/pages/demo_page_five.dart';
import '/pages/demo_page_six.dart';
import '/pages/callback_effect_page.dart';
import '/pages/custom_effect_page.dart';
import '/pages/swap_effect_page.dart';
import '/pages/toggle_effect_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

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
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const DemoPageOne(title: 'Demo Page One'),
                  ),
                ),
                child: const Text('Demo Page One'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const DemoPageTwo(title: 'Demo Page Two'),
                  ),
                ),
                child: const Text('Demo Page Two'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const DemoPageThree(title: 'Demo Page Three'),
                  ),
                ),
                child: const Text('Demo Page Three'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const DemoPageFour(title: 'Demo Page Four'),
                  ),
                ),
                child: const Text('Demo Page Four'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const DemoPageFive(title: 'Demo Page Five'),
                  ),
                ),
                child: const Text('Demo Page Five'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const DemoPageSix(title: 'Demo Page Six'),
                  ),
                ),
                child: const Text('Demo Page Six'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const CallbackEffectPage(title: 'Callback Effect Page'),
                  ),
                ),
                child: const Text('Callback Effect Page'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const ToggleEffectPage(title: 'Toggle Effect Page'),
                  ),
                ),
                child: const Text('Toggle Effect Page'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const CustomEffectPage(title: 'Custom Effect Page'),
                  ),
                ),
                child: const Text('Custom Effect Page'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const SwapEffectPage(title: 'Swap Effect Page'),
                  ),
                ),
                child: const Text('Swap Effect Page'),
              ),
            ],
          ),
        ),
      );
}
