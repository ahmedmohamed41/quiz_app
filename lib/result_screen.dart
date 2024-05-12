import 'package:flutter/material.dart';
import 'package:rolldice_app/widgets/result_widget.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.answerList, {super.key});
  final List<String> answerList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF5640FB),
              Color(0xFFE040FB),
            ],
          ),
        ),
        child: ResultWidget(answerList: answerList),
      ),
    );
  }
}
