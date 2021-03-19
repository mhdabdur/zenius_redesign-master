import 'package:intl/intl.dart';
import 'package:zenius_redesign/constants/Formats.dart';

class DateUtils {
  static String dateDDMMYYY(String date) {
    try {
      // String languageCode = Localizations.localeOf(context).languageCode;
      return DateFormat(Formats.formatBirth)
          .format(DateTime.parse(date.substring(0, 10)));
    } catch (e) {
      return "-";
    }
  }

  static DateTime toDate(String date) {
    var outputFormat = DateFormat(Formats.formatDate);
    return outputFormat.parse("$date");
  }

  static String dateMMYYYY(String date) {
    try {
      return DateFormat(Formats.formatMonthYear)
          .format(DateTime.parse(date.substring(0, 10)));
    } catch (e) {
      return "-";
    }
  }

  static String birthFormat(String date) {
    try {
      return DateFormat(Formats.formatBirth).format(DateTime.parse(date));
    } catch (e) {
      return "-";
    }
  }

  static String humanDate(String date) {
    try {
      return DateFormat(Formats.formatContent).format(DateTime.parse(date));
    } catch (e) {
      return "-";
    }
  }

  static String year(String date) {
    try {
      return DateFormat(Formats.formatYearPicker)
          .format(DateTime.parse(date.substring(0, 10)));
    } catch (e) {
      return "-";
    }
  }

  static String month(String date) {
    try {
      return DateFormat(Formats.formatMonthNamePicker)
          .format(DateTime.parse(date.substring(0, 10)));
    } catch (e) {
      return "-";
    }
  }

  static String dateMMMYYYY(String date) {
    try {
      return DateFormat(Formats.formatWorkReport).format(DateTime.parse(date));
    } catch (e) {
      return "-";
    }
  }

  static String dateYYYYMMDD(String date) {
    try {
      return DateFormat(Formats.formatDate)
          .format(DateTime.parse(date.substring(0, 10)));
    } catch (e) {
      return "-";
    }
  }

  static DateTime stringToHours(String hours) {
    try {
      return DateFormat(Formats.formatHours).parse(hours);
    } catch (e) {
      return null;
    }
  }

  static String minutesToHoursFormat(int minutes) {
    try {
      int workHours = (minutes / 60).floor();
      int workMinutes = minutes % 60;

      String differentInOut;

      if (workHours < 10) {
        if (workMinutes < 10) {
          differentInOut = "0$workHours:0$workMinutes";
        } else {
          differentInOut = "0$workHours:$workMinutes";
        }
      } else {
        if (workMinutes < 10) {
          differentInOut = "$workHours:0$workMinutes";
        } else {
          differentInOut = "$workHours:$workMinutes";
        }
      }

      return differentInOut;
    } catch (e) {
      return null;
    }
  }
}
