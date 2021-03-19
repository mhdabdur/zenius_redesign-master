import 'package:flutter/cupertino.dart';
import 'package:zenius_redesign/components/CircularStdText.dart';
import 'package:zenius_redesign/constants/Colors.dart';
import 'package:zenius_redesign/utils/Dimension.dart';

class EmptyState extends StatelessWidget {

  final bool isCenter;


  EmptyState({this.isCenter = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimension.screenWidth,
      height: isCenter ? Dimension.screenHeight : Dimension.safeBlockVertical * 10,
      margin: EdgeInsets.only(
          left: Dimension.safeBlockHorizontal * 5,
          right: Dimension.safeBlockHorizontal * 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Wrap(
            children: [
              CircularStdText(
                value: "Belum ada data ditemukan.",
                fontType: "bold",
                textColor: ColorBase.black,
                size: 20,
              )
            ],
          ),
          SizedBox(
            height: Dimension.safeBlockVertical * 2,
          ),
          Wrap(
            children: [
              CircularStdText(
                value: "Mohon untuk mengisi data.",
                fontType: "medium",
                size: 12,
                textColor: ColorBase.black,
              )
            ],
          ),
        ],
      ),
    );
  }
}
