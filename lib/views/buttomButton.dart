import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.label, this.onPress, this.color});

  final String label;
  final Function onPress;
  final color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 80,
        color: color,
        width: 100,
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
