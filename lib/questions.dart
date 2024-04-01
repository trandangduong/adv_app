import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(context) {
    return Column(
      children: [
       const Text('Questions Sreen'),
       const Sizedbox(height: 30),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answers 1'),
          ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answers 2'),
          ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answers 3'),
          ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answers 4'),
          ),
      ],
    ) ;
  }
}
