
import 'package:flutter/material.dart';
import 'package:rolldice_app/data/question._data.dart';
import 'package:rolldice_app/widgets/answer_widget.dart';

class CompareResultWidget extends StatelessWidget {
  const CompareResultWidget({
    super.key,
    required this.answerList,
  });

  final List<String> answerList;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            width: 20,
            child: Column(
              children: [
                ...answerList.map(
                  (e) {
                    return AnswerWidget(
                      text: e,
                      onPressed: () {},
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 5,
        ),
        Expanded(
          child: Column(
            children: [
              ...answerListCorrect.map(
                (e) {
                  return AnswerWidget(
                    color: Colors.blueAccent,
                    text: e,
                    onPressed: () {},
                  );
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}

