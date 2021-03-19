class TextUtils {
  static getCapitalizeString(String str) {
    String cRet = '';
    str.split(' ').forEach((word) {
      cRet += "${word[0].toUpperCase()}${word.substring(1).toLowerCase()} ";
    });
    return cRet.trim();
  }
}