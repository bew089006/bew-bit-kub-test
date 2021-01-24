import 'package:flutter/material.dart';
import 'question1/questionOneDotOne.dart';
import 'constants.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: QuestionOneDotOne(),
    );
  }
}
