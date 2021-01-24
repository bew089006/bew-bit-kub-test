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
          ("O" * (n - (2 * i)).abs()) +
          ("X" * ((n - voidLength) / 2).round()) +
          "\n";
    }

    if (n % 2 != 0) {
      int centerUp = center.round();
      strCenter = "X" * n + "\n";

      for (int i = 1; i < n; i++) {
        if (i < centerUp) {
          strAnswerUp += _genStrAnswer(i);
        } else {
          strAnswerDown += _genStrAnswer(i);
        }
      }
      strResult = strAnswerUp + strCenter + strAnswerDown;
    } else {
      for (int i = 1; i < n; i++) {
        strCenter = ("X" * n + "\n") * 2;

        if (i != center || i != center) {
          if (i < center) {
            strAnswerUp += _genStrAnswer(i);
          } else {
            strAnswerDown += _genStrAnswer(i);
          }
        }
      }
      strResult = strAnswerUp + strCenter + strAnswerDown;
    }

    return strResult;
  }
}
