import 'package:intl/intl.dart';

class NumberUtil {

  static priceToRupiah(double price){
    var symbol = new NumberFormat.currency(locale: "id", symbol: "Rp ", decimalDigits: 0);
    return symbol.format(price.toInt());
  }

  static setResult(double total){
    if(total > 90) {
      return "Sangat Baik";
    } else if(total >= 75){
      return "Baik";
    } else if(total >= 61){
      return "Cukup";
    } else if(total >= 51){
      return "Kurang";
    } else {
      return "Buruk";
    }
  }


}
