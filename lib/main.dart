import 'package:flutter/material.dart';
import 'package:food_app/screens/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
}
