import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:order_app/models/question_model.dart';
import 'package:order_app/widgets/appbar_widget.dart';

import '../widgets/question_widget.dart';
import '../widgets/registration_textfield_widget.dart';

class HelpScreen extends StatelessWidget {
  HelpScreen({Key? key}) : super(key: key);
  QuestionModel questionModel = QuestionModel.fromMap({
    'question': 'It is a long established fact that a reader will?',
    'answer':
        'distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum \as their default model '
  });
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppbarWidget(title: 'Help', actions: [
            IconButton(
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
              ),
              onPressed: () {},
            )
          ]),
          body: Directionality(
            textDirection: TextDirection.ltr,
            child: Padding(
              padding: const EdgeInsets.only(left: 28, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('How can we help you?'),
                  const SizedBox(height: 10),
                  RegTextFieldWidget(
                    hintText: 'Search our help center',
                    onChanged: (text) {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Frequent Questions'),
                  SizedBox(
                    height: 10,
                  ),
                  QuestionWidget(
                    questionModel: questionModel,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  QuestionWidget(
                    questionModel: questionModel,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
