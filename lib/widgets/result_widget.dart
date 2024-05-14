import 'package:flutter/material.dart';
import 'package:rolldice_app/data/question._data.dart';
import 'package:rolldice_app/screens/quiz.dart';
import 'package:rolldice_app/widgets/compare_result_widget.dart';

int x = 0;
class ResultWidget extends StatelessWidget {
  const ResultWidget({super.key, required this.answerList});
  final List<String> answerList;

  int get _checkCorrectAnswer {
    for (int i = 0; i < answerList.length; i++) {
      if (answerList[i] == answerListCorrect[i]) {
        x++;
      }
    }
    return x;
  }

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
          // const Text(
          //   'Result Screen',
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontSize: 30,
          //   ),
          //   textAlign: TextAlign.start,
          // ),
          Row(
            children: [
              Expanded(
                child: Text(
                  'You Answered $_checkCorrectAnswer out of 6 question correctly!',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          Expanded(child: CompareResultWidget(answerList: answerList)),
          const SizedBox(
            height: 40,
          ),
          const RestartWidget(),
          const SizedBox(height: 40),
        ],
      ),
    );
  }


}

class RestartWidget extends StatelessWidget {
  const RestartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: const Icon(
        Icons.replay_circle_filled,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) {
              x = 0;
              return const QuizScreen();
            },
          ),
          (route) => false,
        );
      },
      label: const Text(
        'Restart Quiz!',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}

