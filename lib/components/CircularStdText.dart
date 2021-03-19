import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zenius_redesign/constants/Colors.dart';

class CircularStdText extends StatelessWidget {

  final String value;
  final Color textColor;
  final String fontType;
  final double size;
  final int maxLine;

  CircularStdText(
      {this.value,
      this.textColor = ColorBase.black,
      this.fontType = "regular",
      this.size = 14,
      this.maxLine = 8});

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine,
      style: TextStyle(
          color: textColor,
          fontSize: size,
          fontWeight: setFontWeight(fontType)),
    );
  }

  setFontWeight(String fontType) {
    switch (fontType) {
      case "medium":
        return FontWeight.w700;
        break;
      case "regular":
        return FontWeight.w500;
        break;
      case "bold":
        return FontWeight.w900;
        break;
      case "book":
        return FontWeight.w400;
        break;
      default:
        return FontWeight.w500;
    }
  }
}

enum FontType {
  Regular,
  Bold,
  Book,
  Medium
}
