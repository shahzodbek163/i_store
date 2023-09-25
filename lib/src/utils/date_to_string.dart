class DateToString {
  List<String> months = [
    "Yan",
    "Fev",
    "Mart",
    "Apr",
    "May",
    "Iyun",
    "Iyul",
    "Avg",
    "Sent",
    "Okt",
    "Noy",
    "Dek",
  ];
  String dateToString(DateTime date) {
    String month = "";
    switch (date.month) {
      case DateTime.january:
        {
          month = months[0];
        }
      case DateTime.february:
        {
          month = months[1];
        }
      case DateTime.march:
        {
          month = months[2];
        }
      case DateTime.april:
        {
          month = months[3];
        }
      case DateTime.may:
        {
          month = months[4];
        }
      case DateTime.june:
        {
          month = months[5];
        }
      case DateTime.july:
        {
          month = months[6];
        }
      case DateTime.august:
        {
          month = months[7];
        }
      case DateTime.september:
        {
          month = months[8];
        }
      case DateTime.october:
        {
          month = months[9];
        }
      case DateTime.november:
        {
          month = months[10];
        }
      case DateTime.december:
        {
          month = months[11];
        }
    }
    return "${date.day} $month, ${date.year}";
  }
}
