import 'package:flutter/material.dart';
import 'package:adv_app/answer_button.dart';
import 'package:adv_app/data/questions.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(context) {
    final currentQues = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Questions Sreen'),
          const SizedBox(height: 30),
          ...currentQues.answers.map((answer) {
            return AnswerButton(onTap: () {}, answerText: answer);
          }),
        ],
      ),
    );
  }
}
