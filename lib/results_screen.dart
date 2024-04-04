import 'package:flutter/material.dart';
import 'package:adv_app/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.restartQuiz,
    required this.chosenAns,
  });
  final List<String> chosenAns;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i == chosenAns.length; i++) {
      summary.add(
        {
          'Question_index': questions[i],
          'Question': questions[i].text,
          'Correct_Ans': questions[i].answers[0],
          'User_Ans': chosenAns[i],
        },
      );
    }
    return summary;
  }

  final void Function() restartQuiz;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You answered X/Y questions correctly.',
              textAlign: TextAlign.center,
            ),
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
