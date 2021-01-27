class QuestionBrain2 {
  int _day;
  int _month;
  int _year;
  int _initial_day_index = 5;
  int _initial_day = 29;
  int _initial_month = 2;
  int _initial_year = 2020;

  List _arrDaysTitles = [
    "จันทร์",
    "อัวคาร",
    "พุธ",
    "พฤหัสบดี",
    "ศุกร์",
    "เสาร์",
    "อาทิตย์"
  ];

  List _arrMonth = [
    "มกราคม",
    "กุมภาพันธ์",
    "มีนาคม",
    "เมษายน",
    "พฤษภาคม",
    "มิถุนายน",
    "กรกฎาคม",
    "สิงหาคม",
    "กันยายน",
    "ตุลาคม",
    "พฤศจิกายน",
    "ธันวาคม",
  ];

  List _arrNumberOfMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

  void insertInputString(String str) {
    List arrStr = str.split("/");

    this._day = int.parse(arrStr[0]);
    this._month = int.parse(arrStr[1]);
    this._year = int.parse(arrStr[2]);
  }

  String getAnswer() {
    try {
      int firstYearDays;
      int lastYearDays;
      //  calculated number of first year days

      int days = _initial_year - _year % 4 == 0 ? 365 : 366;

      if (_year < _initial_year) {
        firstYearDays = (days -
            (_getSumDayOfMonth(_arrNumberOfMonth, 0, _month - 1) + _day));
        lastYearDays =
            _getSumDayOfMonth(_arrNumberOfMonth, 0, _initial_month - 1) +
                _initial_day;
      } else {
        firstYearDays = 366 -
            (_getSumDayOfMonth(_arrNumberOfMonth, 0, _initial_month - 1) +
                _initial_day) +
            1;

        lastYearDays =
            _getSumDayOfMonth(_arrNumberOfMonth, 0, _month - 1) + _day;
      }

      // calculated number day betwenn first and last year
      int diffYear = (_initial_year - _year).abs();
      int leapDay = ((diffYear - 1) / 4).floor();
      int betweenYearDays = (365 * (diffYear - 1)) + leapDay;

      // calculated number days of last year
      int totalDays = betweenYearDays + firstYearDays + lastYearDays;

      // int indexTitle = (((totalDays) % 7) + _initial_day_index) - 1;
      // print( 6 - (totalDays) % 7));
      int indexTitle = 6 - (totalDays) % 7;

      print("check Result -------------");
      print("first ---- ${firstYearDays}");
      print("last ---- ${lastYearDays}");
      print("betweenYearDays ---- ${betweenYearDays}");
      print("totalDays ---- ${totalDays}");
      print("indexTitle ---- ${indexTitle}");
      //
      if (indexTitle > 6) {
        indexTitle = indexTitle % 7;
      }

      return "วัน${_arrDaysTitles[indexTitle]} ที่ ${_day.toString()} ${_arrMonth[_month - 1]} ${_year + 543}";
    } catch (e) {
      return "กรุณากรอกข้อมูลให้ครบ";
    }
  }

  int _getSumDayOfMonth(List arr, int start, int end) {
    return arr
        .sublist(start, end)
        .fold(0, (previous, current) => previous + current);
  }
}
