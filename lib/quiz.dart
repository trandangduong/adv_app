import 'package:flutter/material.dart';
import 'package:adv_app/start_screen.dart';
import 'package:adv_app/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScr = 'start-Scr';

  void switchScr() {
    setState(() {
      activeScr = 'question-Scr';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Color.fromARGB(255, 58, 232, 23)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: activeScr == 'start-Scr'
              ? StartScreen(switchScr)
              : const Questions(),
        ),
      ),
    );
  }
}
