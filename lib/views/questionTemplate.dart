import 'package:flutter/material.dart';
import 'buttomButton.dart';
import '../services/questionBrain1.dart';
import 'dart:ui';

class QuestionTemplate extends StatefulWidget {
  final String exTitle;
  final Function getAnswer;
  final Function onPress;
  final bool isFirstQuestion;
  final QuestionBrain1 quest1;

  const QuestionTemplate(
      {this.exTitle,
      this.quest1,
      this.getAnswer,
      this.onPress,
      this.isFirstQuestion = false});

  @override
  _QuestionTemplateState createState() => _QuestionTemplateState();
}

class _QuestionTemplateState extends State<QuestionTemplate> {
  int n = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(widget.exTitle),
            SizedBox(
              height: 100,
            ),
            SizedBox(
              width: 300,
              height: 100,
              child: TextField(
                onChanged: (String number) {
                  int numberToI = int.parse(number);
                  setState(() {
                    if (number.length == 0) {
                      n = 0;
                    } else {
                      n = numberToI;
                    }
                  });
                },
                decoration: new InputDecoration(labelText: "Enter your number"),
                keyboardType: TextInputType.number,
                // Only numbers can be entered
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Wrap(
              spacing: 30,
              runSpacing: 30,
              children: [
                Text(
                  "${widget.getAnswer(n)}",
                  style: TextStyle(
                    letterSpacing: 3.5,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(
                  child: BottomButton(
                    label: "back.",
                    color: Colors.red,
                    onPress: () {
                      Navigator.pop(context);
                    },
                  ),
                  maintainSize: false,
                  maintainAnimation: false,
                  maintainState: true,
                  visible: !widget.isFirstQuestion,
                ),
                Visibility(
                  child: SizedBox(
                    width: 50,
                  ),
                  maintainSize: false,
                  maintainAnimation: false,
                  maintainState: true,
                  visible: !widget.isFirstQuestion,
                ),
                BottomButton(
                  label: "next",
                  color: Colors.green,
                  onPress: widget.onPress,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
