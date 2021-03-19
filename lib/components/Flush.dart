import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zenius_redesign/constants/Colors.dart';

Future flush(BuildContext context, String message, FlushType flushType){
  if(flushType == FlushType.SUCCESS){
    return Flushbar(
      flushbarStyle: FlushbarStyle.FLOATING,
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: ColorBase.green,
      message: message,
      icon: Icon(
        FontAwesomeIcons.infoCircle,
        size: 28.0,
        color: Colors.white,
      ),
      duration: Duration(seconds: 3),
    ).show(context);
  } else {
    return Flushbar(
      flushbarStyle: FlushbarStyle.FLOATING,
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: ColorBase.darkRed,
      message: message,
      icon: Icon(
        FontAwesomeIcons.infoCircle,
        size: 28.0,
        color: Colors.white,
      ),
      duration: Duration(seconds: 3),
    ).show(context);
  }
}

enum FlushType{
  SUCCESS,
  ERROR
}