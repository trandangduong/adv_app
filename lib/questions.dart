import 'package:flutter/material.dart';
import 'package:adv_app/answer_button.dart';
import 'package:adv_app/data/questions.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currentQuesIndex = 0;
  void answerQues() {
    setState(() {
      if (currentQuesIndex <= questions.length) currentQuesIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQues = questions[currentQuesIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQues.text,
              style: const TextStyle(
                color: Color.fromARGB(255, 243, 65, 33),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQues.getShuffledAns().map((answer) {
              return AnswerButton(answerText: answer, onTap: answerQues);
            }),
          ],
        ),
      ),
    );
  }
}
