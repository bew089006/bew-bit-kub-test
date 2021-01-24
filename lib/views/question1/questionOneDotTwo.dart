import 'package:flutter/material.dart';
import '../questionTemplate.dart';
import '../../services/questionBrain1.dart';
import '../constants.dart';

QuestionBrain1 quest1 = new QuestionBrain1();

class QuestionOneDotTwo extends StatefulWidget {
  @override
  _QuestionOneDotTwoState createState() => _QuestionOneDotTwoState();
}

class _QuestionOneDotTwoState extends State<QuestionOneDotTwo> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: QuestionTemplate(
        exTitle: "Example 1.2",
        getAnswer: quest1.getAnswer2,
      ),
    );
  }
}
