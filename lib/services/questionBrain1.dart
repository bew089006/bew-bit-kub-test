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
}
