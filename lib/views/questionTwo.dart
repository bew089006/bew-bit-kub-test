import 'package:flutter/material.dart';
import 'constants.dart';
import 'buttomButton.dart';
import 'questionThree.dart';

class QuestionTwo extends StatefulWidget {
  @override
  _QuestionTwoState createState() => _QuestionTwoState();
}

class _QuestionTwoState extends State<QuestionTwo> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BottomButton(
                label: "next.",
                color: Colors.green,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuestionThree(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
