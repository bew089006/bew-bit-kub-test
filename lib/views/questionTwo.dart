import 'package:flutter/material.dart';
import 'constants.dart';
import 'buttomButton.dart';
import 'questionThree.dart';
import '../services/questionBrain2.dart';

QuestionBrain2 quest2 = new QuestionBrain2();

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Example 2."),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 300,
                height: 100,
                child: TextField(
                  onChanged: (String str) {
                    setState(() {
                      quest2.insertInputString(str);
                    });
                  },
                  // onEditingComplete: (String str) {
                  //   setState(() {
                  //     quest2.insertInputString(str);
                  //   });
                  //   quest2.insertInputString(str);
                  // },
                  decoration:
                      new InputDecoration(labelText: "Enter your input."),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Text("${quest2.getAnswer()}"),
              SizedBox(
                height: 50,
              ),
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
