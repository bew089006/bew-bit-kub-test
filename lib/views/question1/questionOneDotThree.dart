import 'package:flutter/material.dart';
import '../questionTemplate.dart';
import '../../services/questionBrain1.dart';
import '../constants.dart';
import '../questionTwo.dart';

QuestionBrain1 quest1 = new QuestionBrain1();

class QuestionOneDotThree extends StatefulWidget {
  @override
  _QuestionOneDotThreeState createState() => _QuestionOneDotThreeState();
}

class _QuestionOneDotThreeState extends State<QuestionOneDotThree> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: QuestionTemplate(
        exTitle: "Example 1.3",
        getAnswer: quest1.getAnswer3,
        onPress: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuestionTwo(),
            ),
          );
        },
      ),
    );
  }
}
