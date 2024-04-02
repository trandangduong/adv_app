<<<<<<< HEAD
class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAns() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
=======
class QuizQuestion{
  const QuizQuestion(this.text, this.question);
  
  final String  text;
  final List<String> answers;
}
>>>>>>> b45eb3f5ae1d974bf40544c498d55acc4424fc9b
