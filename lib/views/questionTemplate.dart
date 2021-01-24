import 'package:flutter/material.dart';
import 'buttomButton.dart';

class QuestionTemplate extends StatefulWidget {
  final String exTitle;
  final Function getAnswer;
  final Function onPress;

  const QuestionTemplate({this.exTitle, this.getAnswer, this.onPress});

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
            Text("${widget.getAnswer(n)}"),
            SizedBox(
              height: 50,
            ),
            BottomButton(
              label: "next",
              onPress: widget.onPress,
            )
          ],
        )
      ],
    );
  }
}
