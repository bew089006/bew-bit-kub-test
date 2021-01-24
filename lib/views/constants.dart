import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  final Widget body;

  MyScaffold({this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("BitKub - test"),
        ),
        body: body);
  }
}
