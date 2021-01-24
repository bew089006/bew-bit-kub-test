import 'package:flutter/material.dart';
import 'showAnswerQuestion1.dart';

ShowAnswerQuestion1 question1 = new ShowAnswerQuestion1();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("1.1\n 124545"),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
