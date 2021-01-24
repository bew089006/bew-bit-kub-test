import 'package:flutter/material.dart';
import '../questionTemplate.dart';
import '../../services/questionBrain1.dart';
import 'questionOneDotTwo.dart';

QuestionBrain1 quest1 = new QuestionBrain1();

class QuestionOneDotOne extends StatefulWidget {
  @override
  _QuestionOneDotOneState createState() => _QuestionOneDotOneState();
}

class _QuestionOneDotOneState extends State<QuestionOneDotOne> {
  @override
  Widget build(BuildContext context) {
    return QuestionTemplate(
      exTitle: "Example 1.1",
      getAnswer: quest1.getAnswer1,
      onPress: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => QuestionOneDotTwo(),
          ),
        );
      },
    );
  }
}
