import 'package:flutter/material.dart';

import '/pages/animation_page_one.dart';
import '/pages/animation_page_two.dart';
import '/pages/animation_page_three.dart';
import '/pages/animation_page_four.dart';
import '/pages/animation_page_five.dart';
import '/pages/animation_page_six.dart';
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
                        const AnimationPageOne(title: 'Animation Page One'),
                  ),
                ),
                child: const Text('Animation Page One'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const AnimationPageTwo(title: 'Animation Page Two'),
                  ),
                ),
                child: const Text('Animation Page Two'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const AnimationPageThree(title: 'Animation Page Three'),
                  ),
                ),
                child: const Text('Animation Page Three'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const AnimationPageFour(title: 'Animation Page Four'),
                  ),
                ),
                child: const Text('Animation Page Four'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const AnimationPageFive(title: 'Animation Page Five'),
                  ),
                ),
                child: const Text('Animation Page Five'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const AnimationPageSix(title: 'Animation Page Six'),
                  ),
                ),
                child: const Text('Animation Page Six'),
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
