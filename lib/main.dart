import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const PillBoxApp());
}

class PillBoxApp extends StatelessWidget {
  const PillBoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Pill Box',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
