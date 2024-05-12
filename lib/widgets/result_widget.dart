import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rolldice_app/quiz.dart';
import 'package:rolldice_app/widgets/compare_result_widget.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({
    super.key,
    required this.answerList,
  });

  final List<String> answerList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Result Screen',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Your Answers are',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.playfairDisplay(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  'Correct Answers are',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.playfairDisplay(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          CompareResultWidget(answerList: answerList),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const QuizScreen(),
                ),
                (route) => false,
              );
            },
            child: const Text(
              'Restart Quiz!',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
