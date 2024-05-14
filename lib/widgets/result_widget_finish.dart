import 'package:flutter/material.dart';
import 'package:rolldice_app/data/question._data.dart';

class ResultWidgetFinished extends StatelessWidget {
  const ResultWidgetFinished({
    super.key,
    required this.answerList, required this.index,
  });

  final List<String> answerList;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         CircleAvatar(
          backgroundColor: Colors.red,
          child: Text('${index+1}'),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                question[index].question,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
              Text(
                answerList[index],
                style: const TextStyle(
                  color: Colors.white30,
                  fontSize: 13,
                ),
              ),
              Text(
                answerListCorrect[index],
                style: const TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
