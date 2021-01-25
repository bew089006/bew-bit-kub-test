import 'package:flutter/cupertino.dart';

class QuestionBrain1 {
  String getAnswer1(int n) {
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

  String getAnswer2(int n) {
    String strResult = "";
    String strCenter = "";
    String strAnswerUp = "";
    String strAnswerDown = "";
    double center = n / 2;

    String _genStrAnswer(i) {
      int voidLength = (n - (2 * i)).abs();
      print(voidLength);

      return ("X" * ((n - voidLength) / 2).round()) +
          ("  " * (n - (2 * i)).abs()) +
          ("X" * ((n - voidLength) / 2).round()) +
          "\n";
    }

    for (int i = 1; i < n; i++) {
      if (i < center) {
        strAnswerUp += _genStrAnswer(i);
      } else if (i > center) {
        strAnswerDown += _genStrAnswer(i);
      }
    }

    if (n % 2 != 0) {
      strCenter = "X" * n + "\n";
      strResult = strAnswerUp + strCenter + strAnswerDown;
    } else {
      strCenter = ("X" * n + "\n") * 2;
      strResult = strAnswerUp + strCenter + strAnswerDown;
    }

    return strResult;
  }

  String getAnswer3(int n) {
    String strResult = "";
    double center = n / 2;
    int centerUp = center.round();

    for (int i = 1; i <= n; i++) {
      if (n / 2 > 1) {
        if (i == 2) {
          strResult += ("Y" * (n - 1)) + "X" + "\n";
        } else if (i == centerUp) {
          if (n >= 7) {
            strResult += "X" + ("Y" * (n - 4)) + "X" + "Y" + "X" + "\n";
          } else {
            strResult += ("X" * (n - 2)) + "Y" + "X" + "\n";
          }
        } else if (i == n - 1) {
          if (n > 4) {
            strResult += "X" + ("Y" * (n - 2)) + "X" + "\n";
          } else {
            strResult += ("X" * (n - 2)) + "Y" + "X" + "\n";
          }
        } else if (i > centerUp && i < n - 1) {
          strResult += "X" + "Y" + ("X" * (n - 4)) + "Y" + "X" + "\n";
        } else if (i > 2 && i < centerUp) {
          strResult += ("X" * (n - 2)) + "Y" + "X" + "\n";
        } else {
          strResult += ("X" * n) + "\n";
        }
      } else {
        strResult += ("X" * n) + "\n";
      }
    }
    return strResult;
  }
}
