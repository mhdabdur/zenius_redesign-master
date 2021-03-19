import 'Dictionary.dart';

class DayCode {
  static const MONDAY = 1;
  static const TUESDAY = 2;
  static const WEDNESDAY = 3;
  static const THURSDAY = 4;
  static const FRIDAY = 5;
  static const SATURDAY = 6;
  static const SUNDAY = 7;

  static String getString(int type) {
    switch (type) {
      case MONDAY: // New
        return Dictionary.textMonday;
      case TUESDAY: // New
        return Dictionary.textTuesday;
      case WEDNESDAY: // New
        return Dictionary.textWednesday;
      case THURSDAY: // New
        return Dictionary.textThursday;
      case FRIDAY: // New
        return Dictionary.textFriday;
      case SATURDAY: // New
        return Dictionary.textSaturday;
      case SUNDAY: // New
        return Dictionary.textSunday;
      default:
        return null;
    }
  }
}
