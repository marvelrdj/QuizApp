class QuizQuestion {
  QuizQuestion(this.text, this.answers);
  final String text; //here it will map from models qustion
  final List<String>
      answers; //this will map the list of ans from the qustion come from data
  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList; //here we copy the list not change the orignal list this also called chainning
  } //this is to sguffle the answer
}
