
import 'package:flutter/material.dart';

import 'screens/home_page.dart';

/// Application entry point.
void main() {
  runApp(const MyApp());
}

/// Sets up the application's theme and initial screen.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini E-Commerce',
      debugShowCheckedModeBanner: false,

      // Apply a consistent theme throughout the application.
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrange,
        ),
        useMaterial3: true,
      ),

      // The Home Page is the first screen.
      home: const HomePage(),
    );
  }
}