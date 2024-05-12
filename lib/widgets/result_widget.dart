import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rolldice_app/widgets/answer_widget.dart';

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
          const SizedBox(
            height: 40,
          ),
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
              Column(
                children: [
                  Text(
                    'Your Answers are :',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.playfairDisplay(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  ...answerList.map(
                    (e) {
                      return AnswerWidget(
                        text: e,
                        onPressed: () {},
                      );
                    },
                  ),
                 
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
