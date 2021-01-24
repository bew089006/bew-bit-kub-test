import 'package:flutter/material.dart';
import 'buttomButton.dart';
import 'question2.dart';
import '../services/questionBrain.dart';

QuestionBrain1 ques1 = new QuestionBrain1();

class Question1 extends StatefulWidget {
  @override
  _Question1State createState() => _Question1State();
}

class _Question1State extends State<Question1> {
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
            Text("Example 1.1"),
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
                    number.length == 0 ? n = 0 : n = numberToI;
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
            Text("${ques1.getAnswer2(n)}"), //TODO
            SizedBox(
              height: 50,
            ),
            BottomButton(
              label: "next",
              onPress: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Question2(),
                //   ),
                // );
              },
            )
          ],
        )
      ],
    );
  }
}
