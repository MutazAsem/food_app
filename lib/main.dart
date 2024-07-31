import 'package:flutter/material.dart';
import 'package:food_app/screens/base.dart';
import 'package:food_app/screens/image_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Our Food App',
      debugShowCheckedModeBanner: false,
      // home: const SplashScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => ImageScreen(),
        'base_screen': (context) => const BaseScreen(),
      },
    );
  }
}
