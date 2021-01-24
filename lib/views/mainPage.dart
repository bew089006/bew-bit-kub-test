import 'package:flutter/material.dart';
import 'question1.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("BitKub - test"),
      ),
      body: Question1(),
    );
  }
}
