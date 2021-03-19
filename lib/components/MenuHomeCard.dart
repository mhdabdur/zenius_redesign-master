import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zenius_redesign/constants/Colors.dart';
import 'package:zenius_redesign/utils/Dimension.dart';

class MenuHomeCard extends StatelessWidget {
  final imagePath, menuText;
  final GestureTapCallback onTapClicked;
  final bool isBackground;
  final bool isImage;
  final Color textColor;
  final textSize;
  final textWeight;
  final bool isFillHeight;

  const MenuHomeCard(
      {Key key,
      @required this.onTapClicked,
      this.imagePath,
      this.menuText,
      this.isBackground = false,
      this.isImage = true,
      this.isFillHeight = false,
      this.textColor = Colors.black,
      this.textSize,
      this.textWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Dimension().init(context);
    if (imagePath != null && menuText != null) {
      return Expanded(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              height: Dimension.safeBlockVertical * 5.7,
              width: Dimension.safeBlockVertical * 5,
              decoration: BoxDecoration(
                color:
                    isBackground ? Colors.white : Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 50,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: RaisedButton(
                onPressed: onTapClicked,
                hoverElevation: 0,
                focusElevation: 0,
                highlightElevation: 0,
                color: Colors.transparent,
                padding: EdgeInsets.symmetric(vertical: 5),
                elevation: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: isImage
                          ? Image.asset(
                              imagePath,
                              color: ColorBase.blue,
                              width: Dimension.blockSizeHorizontal * 6.5,
                              height: Dimension.blockSizeHorizontal * 6.5,
                            )
                          : Icon(
                              imagePath,
                              size: Dimension.safeBlockHorizontal * 8,
                              color: ColorBase.blue,
                            ),
                    ),
                  ],
                ),
              )),
          Text(
            menuText,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyle(
              fontSize: textSize ?? Dimension.blockSizeHorizontal * 2.8,
              color: textColor,
              fontWeight: textWeight ?? FontWeight.w300,
            ),
          ),
          isFillHeight
              ? Container(
                  padding: EdgeInsets.only(
                      bottom: Dimension.safeBlockHorizontal * 2.7))
              : Container(),
        ],
      ));
    } else {
      return Expanded(child: Container());
    }
  }
}
