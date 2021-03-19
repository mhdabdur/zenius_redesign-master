import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:zenius_redesign/constants/Colors.dart';
import 'package:zenius_redesign/constants/Environments.dart';
import 'package:zenius_redesign/constants/Formats.dart';
import 'package:zenius_redesign/models/ClassModel.dart';
import 'package:zenius_redesign/utils/Dimension.dart';

class DetailClassScreen extends StatefulWidget {
  final ClassModel data;

  DetailClassScreen({this.data});

  @override
  _DetailClassScreenState createState() => _DetailClassScreenState();
}

class _DetailClassScreenState extends State<DetailClassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: Dimension.screenWidth,
                child: Image.asset(
                  "${Environments.imageAssets}${widget.data.imgUrl}",
                  fit: BoxFit.fill,),
              ),
              Container(
                padding: EdgeInsets.all(Dimension.safeBlockVertical * 2.25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.data.header,
                      style: TextStyle(
                          fontSize: Dimension.safeBlockVertical * 2,
                          color: ColorBase.purple
                      ),
                    ),
                    SizedBox(
                      height: Dimension.safeBlockVertical * 2,
                    ),
                    Text(
                      widget.data.title,
                      style: TextStyle(
                          fontSize: Dimension.safeBlockVertical * 2.75,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(
                      height: Dimension.safeBlockVertical * 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          widget.data.meetingModel,
                          style: TextStyle(
                              fontSize: Dimension.safeBlockVertical * 2,
                              color: Colors.grey
                          ),
                        ),
                        SizedBox(
                          width: Dimension.safeBlockVertical,
                        ),
                        Icon(
                            FontAwesomeIcons.solidCircle,
                            size: Dimension.safeBlockVertical * 0.8,
                            color: Colors.grey),
                        SizedBox(
                          width: Dimension.safeBlockVertical,
                        ),
                        Text(
                          "Kelas 11",
                          style: TextStyle(
                              fontSize: Dimension.safeBlockVertical * 2,
                              color: Colors.grey
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimension.safeBlockVertical * 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              widget.data.date,
                              style: TextStyle(
                                  fontSize: Dimension.safeBlockVertical * 2,
                                  color: ColorBase.purple
                              ),
                            ),
                            SizedBox(
                              width: Dimension.safeBlockVertical,
                            ),
                            Icon(
                                FontAwesomeIcons.solidCircle,
                                size: Dimension.safeBlockVertical,
                                color: ColorBase.purple),
                            SizedBox(
                              width: Dimension.safeBlockVertical,
                            ),
                            Text(
                              widget.data.clock,
                              style: TextStyle(
                                  fontSize: Dimension.safeBlockVertical * 2,
                                  color: ColorBase.purple
                              ),
                            ),
                            SizedBox(
                              width: Dimension.safeBlockVertical,
                            ),
                            Icon(
                                FontAwesomeIcons.solidCircle,
                                size: Dimension.safeBlockVertical,
                                color: ColorBase.purple),
                            SizedBox(
                              width: Dimension.safeBlockVertical * 2,
                            ),
                            Text(
                              widget.data.heldFor,
                              style: TextStyle(
                                  fontSize: Dimension.safeBlockVertical * 2,
                                  color: ColorBase.purple
                              ),
                            ),
                          ],
                        ),
                        widget.data.status != "lock" ? Image.asset("${Environments.imageAssets}free_sign.png") : Image.asset("${Environments.imageAssets}ic_round-password.png")
                      ],
                    ),
                    SizedBox(
                      height: Dimension.safeBlockVertical * 2,
                    ),
                    Container(
                      padding: EdgeInsets.all(Dimension.safeBlockVertical * 2),
                      width: Dimension.screenWidth,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: ColorBase.grey
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Akan dimulai dalam",
                            style: TextStyle(
                              fontSize: Dimension.safeBlockVertical * 2,
                            ),
                          ),
                          SizedBox(
                            height: Dimension.safeBlockVertical,
                          ),
                          Text(
                            "${_setTimeCountdown(widget.data.fulldate)} Hari",
                            style: TextStyle(
                              fontSize: Dimension.safeBlockVertical * 3,
                              fontWeight: FontWeight.w600
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimension.safeBlockVertical * 2,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: ColorBase.lighterBlack,
                              width: 0.8
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Container(
                        padding: EdgeInsets.all(Dimension.safeBlockVertical),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.asset("${Environments.imageAssets}ic_book.png"),
                              flex: 1,
                            ),
                            Expanded(child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bahan yang perlu kamu siapkan",
                                  style: TextStyle(
                                    fontSize: Dimension.safeBlockVertical * 2,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "8 Topik",
                                      style: TextStyle(
                                          fontSize: Dimension.safeBlockVertical * 2,
                                      ),
                                    ),
                                    SizedBox(
                                      width: Dimension.safeBlockVertical,
                                    ),
                                    Icon(
                                        FontAwesomeIcons.solidCircle,
                                        size: Dimension.safeBlockVertical * 0.8,
                                        color: Colors.grey),
                                    SizedBox(
                                      width: Dimension.safeBlockVertical,
                                    ),
                                    Text(
                                      "1 Kuis",
                                      style: TextStyle(
                                          fontSize: Dimension.safeBlockVertical * 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            flex: 4,),
                            Expanded(child: Icon(
                              FontAwesomeIcons.chevronRight,
                              size: Dimension.safeBlockVertical * 2,
                              color: ColorBase.black,))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Dimension.safeBlockVertical * 2,
                    ),
                    Text(
                      "Tentang Tutor",
                      style: TextStyle(
                        fontSize: Dimension.safeBlockVertical * 2,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(
                      height: Dimension.safeBlockVertical * 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.userCircle,
                          size: Dimension.safeBlockVertical * 8,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: Dimension.safeBlockVertical * 2,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Hilman",
                              style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 2,
                                fontWeight: FontWeight.w300
                              ),
                            ),
                            SizedBox(
                              height: Dimension.safeBlockVertical * 1.5,
                            ),
                            Text(
                              "Sosial Hukum",
                              style: TextStyle(
                                  fontSize: Dimension.safeBlockVertical * 2,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: Dimension.safeBlockVertical * 2,
                    ),
                    Text(
                      "Lulusan dari Ilmu Sosial Politik Universitas Indonesia 2014, aktif menjadi tutor sejak 2016",
                      style: TextStyle(
                        fontSize: Dimension.safeBlockVertical * 2
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }

  String _setTimeCountdown(String date) {
    var inputFormat = DateFormat(Formats.formatBirth);
    var from = inputFormat.parse(date.trim());

    var count = (DateTime.parse(from.toString().substring(0, 10))
        .difference(DateTime.now())
        .inDays) + 1;
    return count.toString();
  }
}
