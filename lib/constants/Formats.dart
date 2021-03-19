
class Formats {
  static String minimalDate = '1900-01-01';
  static String formatDatePicker = 'yyyy-MMMM-dd';
  static String formatYearPicker = 'yyyy';
  static String formatMonthPicker = 'MM';
  static String formatMonthNamePicker = 'MMMM';
  static String formatTimePicker = 'HH:mm';
  static String formatDate = 'yyyy-MM-dd';
  static String formatHours = 'HH:mm';
  static String formatBirth = "dd MM yyyy";
  static String formatDatabase = "yyyy-MM-dd'T'HH:mm:ss";
  static String formatMonthYear = "MMMM yyyy";
  static String formatContent = "EEEE, dd MMMM yyyy HH:mm";
  static String formatWorkReport = "dd MMM yyyy";

  static String convertDate(String input) {
    List month = [
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December"
    ];

    String year = input.split('-')[0];
    String day = input.split('-')[2];
    String monthOutput = "";
    switch (input.split('-')[1]) {
      case '01':
        {
          monthOutput = month[0];
        }
        break;
      case '02':
        {
          monthOutput = month[1];
        }
        break;
      case '03':
        {
          monthOutput = month[2];
        }
        break;
      case '04':
        {
          monthOutput = month[3];
        }
        break;
      case '05':{
        monthOutput = month[4];}
        break;
      case '06':{
        monthOutput = month[5];}
        break;
      case '07':{
        monthOutput = month[6];}
        break;
      case '08':{
        monthOutput = month[7];}
        break;
      case '09':{
        monthOutput = month[8];}
        break;
      case '10':{
        monthOutput = month[9];}
        break;
      case '11':{
        monthOutput = month[10];}
        break;
      case '12':{
        monthOutput = month[11];}
        break;
      default :{
        monthOutput = month[0];}
        break;
    }
    return day+" "+monthOutput+" "+year;
  }

  static int convertMonthToInt(String input) {
    List<String> month = [
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December"
    ];

    return month.indexWhere((element) => element == input) + 1;
  }

  static String convertIntToMonth(int input) {
    List<String> month = [
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December"
    ];

    return month[input - 1];
  }
}


