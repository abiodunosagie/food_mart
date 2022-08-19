import 'package:flutter/material.dart';
import 'package:food_application/screens/welcome_screen.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Application',
      home: WelcomeScreen(),
    );
  }
}
