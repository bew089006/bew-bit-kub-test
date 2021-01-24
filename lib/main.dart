import 'package:flutter/material.dart';
import 'views/mainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Color(0xFF0A0D22),
          scaffoldBackgroundColor: Color(0xFF0A0D22),
          cardColor: Color(0xFF1D1F33),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => MainPage(),
        });
  }
}
