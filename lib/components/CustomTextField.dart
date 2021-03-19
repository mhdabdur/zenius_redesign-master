import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zenius_redesign/constants/Colors.dart';
import 'package:zenius_redesign/utils/Dimension.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final validation;
  final TextInputType textInputType;
  final int maxLines;
  final int maxLength;
  final bool isPassword;
  final bool isEnable;
  final formatters;
  final Function onChanged;

  const CustomTextField(
      {Key key,
      this.hintText,
      this.controller,
      this.validation,
      this.textInputType,
      this.maxLines,
      this.maxLength,
      this.isPassword = false,
      this.isEnable = true,
      this.formatters,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Dimension().init(context);
    return TextFormField(
      onChanged: onChanged,
      obscureText: isPassword,
      maxLines: maxLines != null ? maxLines : 1,
      validator: validation,
      controller: controller,
      maxLength: maxLength,
      inputFormatters: formatters,
      enabled: isEnable,
      showCursor: true,
      cursorColor: ColorBase.green,
      buildCounter: (BuildContext context,
          {int currentLength, int maxLength, bool isFocused}) =>
      null,
      keyboardType: textInputType != null ? textInputType : TextInputType.text,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              vertical: Dimension.blockSizeVertical,
              horizontal: Dimension.blockSizeHorizontal * 3),
          border: OutlineInputBorder(),
          labelText: hintText),
    );
  }
}
