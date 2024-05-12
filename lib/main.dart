import 'package:flutter/material.dart';
import 'package:rolldice_app/quiz.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF5640FB),
                Color(0xFFE040FB),
              ],
            ),
          ),
          child: const Quiz(),
        ),
      ),
    );
  }
}
