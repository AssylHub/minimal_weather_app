import 'package:intl/intl.dart';

class DayNowService {
  DateTime now = DateTime.now();

  String getCurrentDay() {
    const monthNames = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];
    return "${monthNames[now.month - 1]} ${now.day}";
  }

  String getCurrentWeekDay() {
    return DateFormat.EEEE().format(now);
  }
}
