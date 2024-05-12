import 'package:flutter/material.dart';
import 'package:rolldice_app/home.dart';
import 'package:rolldice_app/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = Home(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const Questions();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF5640FB),
              Color(0xFFE040FB),
            ],
          ),
        ),
        child: activeScreen,
      ),
    );
  }
}
