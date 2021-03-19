import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zenius_redesign/constants/Colors.dart';
import 'package:zenius_redesign/utils/Dimension.dart';

class DialogTwoAction extends StatelessWidget {
  final bodyContent;
  final String textNegative, textPositive;
  final negativeButton;
  final positiveButton;

  const DialogTwoAction(
      {Key key,
        @required this.bodyContent,
        this.textNegative = "Batal",
        this.textPositive = "Ya",
        @required this.negativeButton,
        @required this.positiveButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Dimension().init(context);
    return AlertDialog(
        title: bodyContent,
        content: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding:
                EdgeInsets.only(right: Dimension.safeBlockHorizontal * 2),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(Dimension.safeBlockHorizontal),
                      side: BorderSide(color: Colors.grey[300], width: 0.5)),
                  onPressed: negativeButton,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: Dimension.safeBlockHorizontal),
                    child: Text(
                      textNegative,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding:
                EdgeInsets.only(left: Dimension.safeBlockHorizontal * 2),
                child: RaisedButton(
                  elevation: 0,
                  color: ColorBase.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: positiveButton,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: Dimension.safeBlockHorizontal),
                    child: Text(
                      textPositive,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
