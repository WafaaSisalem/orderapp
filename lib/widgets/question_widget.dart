import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:order_app/models/question_model.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({Key? key, required this.questionModel})
      : super(key: key);
  final QuestionModel questionModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(questionModel.question!),
        const SizedBox(
          height: 10,
        ),
        Text(questionModel.answer!)
      ],
    );
  }
}
