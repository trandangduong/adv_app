import 'package:adv_app/question_summary.dart';
import 'package:flutter/material.dart';
import 'package:adv_app/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.restartQuiz,
    required this.chosenAns,
  });
  final List<String> chosenAns;
  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i == chosenAns.length; i++) {
      summary.add(
        {
          'question_index': questions[i],
          'question': questions[i].text,
          'correct_ans': questions[i].answers[0],
          'user_ans': chosenAns[i],
        },
      );
    }
    return summary;
  }

  final void Function() restartQuiz;

  @override
  Widget build(BuildContext context) {
    final numTotalQues = questions.length;
    final numTotalCorrect = summaryData
        .where(
          (data) => data['correct_ans'] == data['user_ans'],
        )
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numTotalCorrect/$numTotalQues questions correctly.',
              textAlign: TextAlign.center,
            ),
            QuestionSummaty(summaryData),
            const SizedBox(height: 30),
            TextButton(
              onPressed: restartQuiz,
              child: const Text('Restart Quiz.'),
            )
          ],
        ),
      ),
    );
  }
}
