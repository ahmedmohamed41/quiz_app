import 'package:flutter/material.dart';
import 'package:rolldice_app/widgets/result_widget_finish.dart';

class CompareResultWidget extends StatelessWidget {
  const CompareResultWidget({
    super.key,
    required this.answerList,
  });

  final List<String> answerList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) => ResultWidgetFinished(
        answerList: answerList,
        index: index,
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 3,
      ),
      itemCount: answerList.length,
    );
  }
}
