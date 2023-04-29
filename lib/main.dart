import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // global setting:
    Animate.restartOnHotReload = true;
    return MaterialApp(
      title: 'Flutter Animate Package',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(250, 50),
            textStyle: const TextStyle(fontSize: 25),
          ),
        ),
      ),
      home: const HomePage(title: 'Flutter Animate Package'),
    );
  }
}
