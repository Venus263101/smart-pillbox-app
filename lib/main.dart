import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(SmartPillBoxApp());
}

class SmartPillBoxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Pill Box',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
