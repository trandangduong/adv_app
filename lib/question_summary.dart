import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionSummaty extends StatelessWidget {
  const QuestionSummaty(this.summrayData, {super.key});
  final List<Map<String, Object>> summrayData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        children: summrayData.map((data) {
          return Row(
            children: [
              Text(((data['question_index'] as int) + 1).toString()),
              Expanded(
                child: Column(
                  children: [
                    Text((data['question'] as String)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text((data['correct_ans'] as String)),
                    Text((data['user_ans'] as String)),
                  ],
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
