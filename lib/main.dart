import 'package:flutter/material.dart';
import 'screens/overview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Network Monitoring',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF1B1B2F),
        primaryColor: const Color(0xFF0F3460),
        hintColor: const Color(0xFF00ADB5),
      ),
      home: const OverviewScreen(),
    );
  }
}
