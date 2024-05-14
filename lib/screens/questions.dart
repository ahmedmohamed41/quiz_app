import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rolldice_app/data/question._data.dart';
import 'package:rolldice_app/models/quiz_model.dart';
import 'package:rolldice_app/screens/result_screen.dart';
import 'package:rolldice_app/widgets/answer_widget.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  int index = 0;
  List<String> listAnswer = [];
  void answerQuestion(String answer) {
    listAnswer.add(answer);
    setState(() {
      if (index == 5) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(listAnswer),
          ),
          (route) => false,
        );
      } else {
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final QuizModel questions = question[index];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            questions.question,
            textAlign: TextAlign.center,
            style: GoogleFonts.playfairDisplay(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          ...questions.shuffledAnswer().map(
            (e) {
              return AnswerWidget(
                text: e,
                onPressed: () => answerQuestion(e),
              );
            },
          ),
        ],
      ),
    );
  }
}
