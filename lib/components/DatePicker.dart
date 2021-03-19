import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zenius_redesign/constants/Dictionary.dart';
import 'package:zenius_redesign/constants/Formats.dart';
import 'package:zenius_redesign/utils/Validations.dart';

class CustomDatePicker extends StatelessWidget {
  final BuildContext context;
  final TextEditingController textField;

  CustomDatePicker({this.context, this.textField});

  @override
  Widget build(BuildContext context) {
    return _buildDatePicker();
  }

  Widget _buildDatePicker(
      {String hintText,
      TextEditingController textField,
      String pickerFormat,
      String format}) {
    return TextFormField(
      maxLines: 1,
      validator: Validations.emptyValidation,
      controller: textField,
      keyboardType: TextInputType.text,
      onTap: () {
        // _showDatePicker(
        //     textField: textField, pickerFormat: pickerFormat, format: format);
      },
      readOnly: true,
      decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          border: OutlineInputBorder(),
          labelText: hintText),
    );
  }

  // _showDatePicker(
  //     {TextEditingController textField, String pickerFormat, String format}) {
  //   final date = DateTime.now();
  //
  //   DatePicker.showDatePicker(
  //     context,
  //     pickerTheme: DateTimePickerTheme(
  //       showTitle: true,
  //       confirm: Text(Dictionary.save, style: TextStyle(color: Colors.red)),
  //       cancel: Text(Dictionary.cancel, style: TextStyle(color: Colors.cyan)),
  //     ),
  //     minDateTime: DateTime.parse(Formats.minimalDate),
  //     maxDateTime: DateTime(date.year + 10, 12, 30),
  //     initialDateTime:
  //         textField.text == '' ? DateTime.now() : _toDate(textField.text),
  //     dateFormat: pickerFormat,
  //     locale: Formats.locale,
  //     onClose: () {
  //       setState(() {
  //         textField.text = textField.text;
  //       });
  //     },
  //     onCancel: () {
  //       setState(() {
  //         textField.text = textField.text;
  //       });
  //     },
  //     onConfirm: (dateTime, List<int> index) {
  //       setState(() {
  //         textField.text = DateUtils.dateDDMMYYY(dateTime.toString());
  //       });
  //     },
  //   );
  // }
  //
  // _toDate(String date) {
  //   var inputFormat = DateFormat(Formats.formatBirth);
  //   var from = inputFormat.parse(date);
  //
  //   var outputFormat = DateFormat(Formats.formatDate);
  //   return outputFormat.parse("$from");
  // }
}
