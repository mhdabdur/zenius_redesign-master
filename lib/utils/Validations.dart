import 'package:zenius_redesign/constants/Dictionary.dart';

class Validations {
  static String phoneValidation(String val) {
    Pattern pattern = r"^(^62\s?|^8|^0)(\d{5,13})$";

    RegExp regex = RegExp(pattern);

    if (val.isEmpty) {
      return Dictionary.errorEmptyForm;
    }

    if (val.length < 3) return Dictionary.errorFormatForm;

    if (val.length > 13) return Dictionary.errorFormatForm;

    if (!regex.hasMatch(val)) return Dictionary.errorFormatForm;

    return null;
  }

  // static String npaValidation(String val) {
  //   Pattern pattern = r"^[0-9]{13}$";
  //
  //   RegExp regex = RegExp(pattern);
  //
  //   if (val.isEmpty) return Dictionary.errorEmptyForm;
  //
  //   if (!regex.hasMatch(val)) return Dictionary.errorFormatNpa;
  //
  //   return null;
  // }

  static String passwordValidation(String val) {
    Pattern pattern = r"^(?=.{8,})";

    RegExp regex = RegExp(pattern);

    if (val.isEmpty) return Dictionary.errorEmptyForm;

    if (!regex.hasMatch(val)) return Dictionary.errorFormatPassword;

    return null;
  }

  static String yearValidation(String val) {
    Pattern pattern = r"^[0-9]{4}$";

    RegExp regex = RegExp(pattern);

    if (val.isEmpty) return Dictionary.errorEmptyForm;

    if (!regex.hasMatch(val)) return Dictionary.errorFormatPassword;

    return null;
  }

  static String numberValidation(String val) {
    Pattern pattern = r"^[0-9]*$";

    RegExp regex = RegExp(pattern);

    if (val.isEmpty) return Dictionary.errorEmptyForm;

    if (!regex.hasMatch(val)) return Dictionary.errorFormatNumber;

    return null;
  }

  static String antiZeroValidation(String val) {
    Pattern pattern = r"^[0-9]$";

    RegExp regex = RegExp(pattern);

    if (val.isEmpty) return Dictionary.errorEmptyForm;

    if (val == "0") return Dictionary.errorEmptyForm;

    if (!regex.hasMatch(val)) return Dictionary.errorFormatNumber;

    return null;
  }

  static String addressValidation(String val) {
    if (val.length > 255) return Dictionary.errorFormatForm;

    if (val.isEmpty) return Dictionary.errorEmptyForm;

    return null;
  }

  static String emptyValidation(String val) {
    if (val.isEmpty) return Dictionary.errorEmptyForm;

    return null;
  }

  static String usernameValidation(String val){

    Pattern pattern = r"^([a-z `'.]*)$";
    RegExp regex = RegExp(pattern);

    if (val.isEmpty) return Dictionary.errorEmptyForm;

    if (!regex.hasMatch(val)) return Dictionary.errorFormatForm;

    return null;
  }

  static String nameValidation(String val) {
    Pattern pattern = r"^([a-zA-Z `'.]*)$";
    RegExp regex = RegExp(pattern);

    if (val.isEmpty) return Dictionary.errorEmptyForm;

    if (val.length < 4) return Dictionary.errorFormatForm;

    if (val.length > 255) return Dictionary.errorFormatForm;

    if (!regex.hasMatch(val)) return Dictionary.errorFormatForm;

    return null;
  }

  static String emailValidation(String val) {
    Pattern pattern =
        r"^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$";
    RegExp regex = RegExp(pattern);

    if (val.isEmpty) return Dictionary.errorEmptyForm;

    if (val.length < 4) return Dictionary.errorFormatForm;

    if (val.length > 255) return Dictionary.errorFormatForm;

    if (!regex.hasMatch(val)) return Dictionary.errorFormatForm;

    return null;
  }
}
