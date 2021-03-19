import 'package:flutter/cupertino.dart';
import 'package:zenius_redesign/constants/Colors.dart';
import 'package:zenius_redesign/constants/Environments.dart';
import 'package:zenius_redesign/utils/Dimension.dart';

class ClockItem extends StatelessWidget {
  final bool isArrive;
  final String time;
  final String desc;

  ClockItem({this.isArrive, this.time, this.desc});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(Dimension.safeBlockHorizontal * 3),
          decoration: BoxDecoration(
              color: isArrive ? ColorBase.green.withOpacity(0.2) : ColorBase.red.withOpacity(0.2),
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: Container(
            width: Dimension.blockSizeHorizontal * 7,
            height: Dimension.blockSizeHorizontal * 7,
            child: isArrive ? Image.asset(
              "${Environments.imageAssets}jam_masuk.png",
            ) : Image.asset(
              "${Environments.imageAssets}jam_pulang.png",
            ),
          ),
        ),
        SizedBox(
          width: Dimension.safeBlockHorizontal * 5,
        ),
        Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: isArrive ? Text(
                    "Jam Masuk",
                    style: TextStyle(fontSize: 14, color: ColorBase.black),
                  ) : Text(
                    "Jam Keluar",
                    style: TextStyle(fontSize: 14, color: ColorBase.black),
                  ),
                  margin: EdgeInsets.only(
                      bottom: Dimension.safeBlockHorizontal * 3),
                ),
                Text(desc,
                    style: TextStyle(fontSize: 12, color: ColorBase.black)),
              ],
            )),
        Text(time)
      ],
    );
  }
}
