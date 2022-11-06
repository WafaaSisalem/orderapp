class QuestionModel {
  QuestionModel({required this.answer, required this.question});
  String? question;
  String? answer;
  QuestionModel.fromMap(Map map) {
    answer = map['answer'];
    question = map['question'];
  }
  toMap() {
    return {
      'answer': answer,
      'question': question,
    };
  }
}
