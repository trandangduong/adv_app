import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
<<<<<<< HEAD
    required this.onTap,
    required this.answerText,
=======
    required this.answerText,
    required this.onTap,
>>>>>>> 7958d61afa2836e7d2ab925ad35ac7d8f6669126
  });
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
<<<<<<< HEAD
      onPressed: () {},
      style: ElevatedButton.styleFrom(),
      child: Text(answerText),
=======
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 30,
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
>>>>>>> 7958d61afa2836e7d2ab925ad35ac7d8f6669126
    );
  }
}
