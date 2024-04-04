import 'package:adv_app/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:adv_app/start_screen.dart';
import 'package:adv_app/questions.dart';
import 'package:adv_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScr = 'start-Scr';
  List<String> selectedAns = [];

  void switchScr() {
    setState(() {
      activeScr = 'question-Scr';
    });
  }

  void chooseAns(String answer) {
    selectedAns.add(answer);
    if (selectedAns.length == questions.length) {
      setState(() {
        selectedAns = [];
        activeScr = 'result-Scr';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidgets = StartScreen(switchScr);
    if (activeScr == 'question-Scr') {
      screenWidgets = Questions(
        onSelectedAns: chooseAns,
      );
    }
    if (activeScr == 'result-Scr') {
      screenWidgets = ResultScreen(
        restartQuiz: switchScr,
        chosenAns: selectedAns,
      );
      //activeScr = 'start-Scr';
    }

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
            child: screenWidgets),
      ),
    );
  }
}
