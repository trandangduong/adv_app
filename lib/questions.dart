import 'package:flutter/material.dart';
import 'package:adv_app/answer_button.dart';
import 'package:adv_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  const Questions({
    super.key,
    required this.onSelectedAns,
  });
  final void Function(String answer) onSelectedAns;

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currentQuesIndex = 0;

  void answerQues(String selectedAns) {
    widget.onSelectedAns(selectedAns);

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
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQues.getShuffledAns().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {
                  answerQues(answer);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
