import 'package:flutter/material.dart';
import 'buttomButton.dart';

class Question2 extends StatefulWidget {
  @override
  _Question2State createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  int n = 0;

  String answer(int n) {
    String strAnswerUp = "";
    String strAnswerDown = "";

    for (int i = n; i >= 0; i--) {
      if (i != 0) {
        strAnswerUp +=
            ("O" * (n - i)) + ("XO" * (i - 1)) + "X" + ("O" * (n - i)) + "\n";
      }

      if (i != n && i != n - 1) {
        strAnswerDown +=
            ("O" * i) + ("XO" * ((n - i) - 1)) + "X" + ("O" * i) + "\n";
      }
    }

    return strAnswerUp + strAnswerDown;
  }

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
                  print("chek number");
                  print(number.length);
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
            Text("${answer(n)}"),
            SizedBox(
              height: 50,
            ),
            BottomButton(
              label: "next",
              onPress: () {},
            )
          ],
        )
      ],
    );
  }
}
