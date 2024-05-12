class QuizModel {
  final String question;
  final List<String> answer;

  QuizModel(this.question, this.answer);

  List<String> shuffledAnswer() {
    final shuffledList = List.of(answer);
    shuffledList.shuffle();
    return shuffledList;
  }
}
