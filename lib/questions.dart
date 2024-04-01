import 'package:flutter/material.dart';
import 'package:adv_app/answer_button.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Questions 1?',
            style: TextStyle(
              color: Color.fromARGB(255, 243, 65, 33),
            ),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            'Answer 1..',
            () {},
          ),
        ],
      ),
    );
  }
}
