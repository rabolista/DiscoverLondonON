import '../models/holiday.dart';

/// Computes Ontario public holidays for any given year.
class HolidaysData {
  HolidaysData._();

  static List<Holiday> forYear(int year) {
    DateTime date(int month, int day) => DateTime(year, month, day);

    // Nth weekday of a month (weekday: 1=Mon..7=Sun), e.g. 3rd Monday of February.
    DateTime nthWeekday(int weekday, int nth, int month) {
      final first = date(month, 1);
      var diff = weekday - first.weekday;
      if (diff < 0) diff += 7;
      return first.add(Duration(days: diff + (nth - 1) * 7));
    }

    // Last given weekday strictly before an anchor date, e.g. last Monday before May 25.
    DateTime lastWeekdayBefore(int weekday, int anchorMonth, int anchorDay) {
      var d = date(anchorMonth, anchorDay).subtract(const Duration(days: 1));
      while (d.weekday != weekday) {
        d = d.subtract(const Duration(days: 1));
      }
      return d;
    }

    // Easter Sunday (Anonymous Gregorian algorithm).
    DateTime easter() {
      final a = year % 19, b = year ~/ 100, c = year % 100;
      final d = b ~/ 4, e = b % 4, f = (b + 8) ~/ 25;
      final g = (b - f + 1) ~/ 3, h = (19 * a + b - d - g + 15) % 30;
      final i = c ~/ 4, k = c % 4, l = (32 + 2 * e + 2 * i - h - k) % 7;
      final m = (a + 11 * h + 22 * l) ~/ 451;
      final month = (h + l - 7 * m + 114) ~/ 31;
      final day = ((h + l - 7 * m + 114) % 31) + 1;
      return date(month, day);
    }

    final easterSunday = easter();
    final goodFriday = easterSunday.subtract(const Duration(days: 2));
    final easterMonday = easterSunday.add(const Duration(days: 1));

    return [
      Holiday(name: "New Year's Day", date: date(1, 1), note: 'Federal'),
      Holiday(name: 'Family Day', date: nthWeekday(DateTime.monday, 3, 2), note: 'Ontario'),
      Holiday(name: 'Good Friday', date: goodFriday, note: 'Federal'),
      Holiday(name: 'Easter Monday', date: easterMonday, note: 'Optional'),
      Holiday(name: 'Victoria Day', date: lastWeekdayBefore(DateTime.monday, 5, 25), note: 'Federal'),
      Holiday(name: 'Canada Day', date: date(7, 1), note: 'Federal'),
      Holiday(name: 'Civic Holiday', date: nthWeekday(DateTime.monday, 1, 8), note: 'Ontario'),
      Holiday(name: 'Labour Day', date: nthWeekday(DateTime.monday, 1, 9), note: 'Federal'),
      Holiday(name: 'Thanksgiving', date: nthWeekday(DateTime.monday, 2, 10), note: 'Federal'),
      Holiday(name: 'Remembrance Day', date: date(11, 11), note: 'Federal'),
      Holiday(name: 'Christmas Day', date: date(12, 25), note: 'Federal'),
      Holiday(name: 'Boxing Day', date: date(12, 26), note: 'Ontario'),
    ];
  }
}
