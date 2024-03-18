import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.7,
            child: Image.asset(
              'assets/images/IMG_2.jpg',
              width: 300,
              //color: const Color.fromARGB(10, 255, 255, 255),
            ),
          ),
          const SizedBox(height: 50),
          const Text(
            'Have fun!',
            style: TextStyle(color: Colors.white, fontSize: 50),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(
                Icons.arrow_forward_ios,
              ),
              label: const Text('Start'))
        ],
      ),
    );
  }
}
