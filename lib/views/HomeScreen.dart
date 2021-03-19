import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:zenius_redesign/constants/Colors.dart';
import 'package:zenius_redesign/constants/Environments.dart';
import 'package:zenius_redesign/constants/Navigation.dart';
import 'package:zenius_redesign/utils/Dimension.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.light,
          backgroundColor: ColorBase.purple,
          toolbarHeight: Dimension.safeBlockVertical * 16,
          centerTitle: false,
          title: Text(
            "Hi Abdur",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          actions: [
            GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(NavigationConstant.Filter);
                },
                child: Container(
                  margin: EdgeInsets.only(
                      bottom: Dimension.safeBlockVertical * 2,
                      top: Dimension.safeBlockVertical * 2,
                      left: Dimension.safeBlockVertical * 2,
                      right: Dimension.safeBlockVertical * 2),
                  padding: EdgeInsets.only(
                      bottom: Dimension.safeBlockVertical,
                      top: Dimension.safeBlockVertical,
                      left: Dimension.safeBlockVertical * 2,
                      right: Dimension.safeBlockVertical * 2),
                  decoration: BoxDecoration(
                      color: ColorBase.darkerPurple,
                      borderRadius: new BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Text("Kelas 11 - IPA",
                          style: TextStyle(
                              fontSize: Dimension.safeBlockVertical * 2,
                              color: ColorBase.orange,
                              fontWeight: FontWeight.w500)),
                      SizedBox(
                        width: Dimension.safeBlockHorizontal,
                      ),
                      Icon(FontAwesomeIcons.caretDown,
                          size: Dimension.safeBlockVertical * 2.5,
                          color: ColorBase.orange)
                    ],
                  ),
                ))
          ],
          bottom: PreferredSize(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(NavigationConstant.Search);
              },
              child: Container(
                margin: EdgeInsets.only(
                    bottom: Dimension.safeBlockVertical * 2,
                    left: Dimension.safeBlockVertical * 2,
                    right: Dimension.safeBlockVertical * 2),
                height: Dimension.safeBlockVertical * 6,
                width: Dimension.screenWidth,
                child: searchField(),
              ),
            ),
            preferredSize: Size.fromHeight(Dimension.safeBlockVertical * 10),
          )),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(
                bottom: Dimension.safeBlockVertical * 2,
                top: Dimension.safeBlockVertical * 2,
                left: Dimension.safeBlockVertical * 2,
                right: Dimension.safeBlockVertical * 2),
            child: Column(
              children: [
                banner(),
                SizedBox(
                  height: Dimension.safeBlockVertical * 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset(
                      "${Environments.imageAssets}Rencana_Belajar.jpg",
                    ),
                    Image.asset(
                      "${Environments.imageAssets}Tryout.jpg",
                    ),
                    Image.asset(
                      "${Environments.imageAssets}UTBK.jpg",
                    ),
                    Image.asset(
                      "${Environments.imageAssets}Foto_Soal.jpg",
                    ),
                  ],
                )
              ],
            ),
          ),
          Divider(
            height: Dimension.safeBlockVertical * 1.25,
            color: Colors.grey[200],
            thickness: Dimension.safeBlockVertical * 1.25,
          ),
          Container(
            width: Dimension.screenWidth,
            color: Colors.white,
            padding: EdgeInsets.only(
                top: Dimension.safeBlockVertical * 2,
                bottom: Dimension.safeBlockVertical * 2,
                left: Dimension.safeBlockVertical * 2,
                right: Dimension.safeBlockVertical * 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mata Pelajaran",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: Dimension.safeBlockVertical * 2,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: Dimension.safeBlockVertical * 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircularPercentIndicator(
                      radius: MediaQuery.of(context).size.width * 0.2,
                      lineWidth: 2.0,
                      animation: true,
                      percent: 0.25,
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "${Environments.imageAssets}book.jpg",
                          ),
                          Text(
                            "25%",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.5,
                                color: ColorBase.purple,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      footer: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "kntl",
                          style: TextStyle(
                              fontSize: Dimension.safeBlockVertical * 2,
                              color: ColorBase.purple,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Colors.purple,
                    ),
                    CircularPercentIndicator(
                      radius: MediaQuery.of(context).size.width * 0.2,
                      lineWidth: 2.0,
                      animation: true,
                      percent: 0.25,
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "${Environments.imageAssets}book.jpg",
                          ),
                          Text(
                            "25%",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.5,
                                color: ColorBase.purple,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      footer: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "kntl",
                          style: TextStyle(
                              fontSize: Dimension.safeBlockVertical * 2,
                              color: ColorBase.purple,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Colors.purple,
                    ),
                    CircularPercentIndicator(
                      radius: MediaQuery.of(context).size.width * 0.2,
                      lineWidth: 2.0,
                      animation: true,
                      percent: 0.25,
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "${Environments.imageAssets}book.jpg",
                          ),
                          Text(
                            "25%",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.5,
                                color: ColorBase.purple,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      footer: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "kntl",
                          style: TextStyle(
                              fontSize: Dimension.safeBlockVertical * 2,
                              color: ColorBase.purple,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Colors.purple,
                    ),
                    CircularPercentIndicator(
                      radius: MediaQuery.of(context).size.width * 0.2,
                      lineWidth: 2.0,
                      animation: true,
                      percent: 0.25,
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "${Environments.imageAssets}book.jpg",
                          ),
                          Text(
                            "25%",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.5,
                                color: ColorBase.purple,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      footer: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "kntl",
                          style: TextStyle(
                              fontSize: Dimension.safeBlockVertical * 2,
                              color: ColorBase.purple,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Colors.purple,
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimension.safeBlockVertical * 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      padding: EdgeInsets.all(Dimension.safeBlockVertical * 3),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: ColorBase.purple, width: 1.5)),
                      child: Column(
                        children: [
                          Image.asset(
                            "${Environments.imageAssets}magnetize.jpg",
                          ),
                          Text(
                            "25%",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.5,
                                color: ColorBase.purple,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(Dimension.safeBlockVertical * 3),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: ColorBase.purple, width: 1.5)),
                      child: Column(
                        children: [
                          Image.asset(
                            "${Environments.imageAssets}chemistry.jpg",
                          ),
                          Text(
                            "25%",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.5,
                                color: ColorBase.purple,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(Dimension.safeBlockVertical * 3),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: ColorBase.purple, width: 1.5)),
                      child: Column(
                        children: [
                          Image.asset(
                            "${Environments.imageAssets}dna.jpg",
                          ),
                          Text(
                            "25%",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.5,
                                color: ColorBase.purple,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(Dimension.safeBlockVertical * 3),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: ColorBase.purple, width: 1.5)),
                      child: Column(
                        children: [
                          Image.asset(
                            "${Environments.imageAssets}graphic.jpg",
                          ),
                          Text(
                            "25%",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.5,
                                color: ColorBase.purple,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimension.safeBlockVertical * 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      padding: EdgeInsets.all(Dimension.safeBlockVertical * 3),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: ColorBase.purple, width: 1.5)),
                      child: Column(
                        children: [
                          Image.asset(
                            "${Environments.imageAssets}world.jpg",
                          ),
                          Text(
                            "25%",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.5,
                                color: ColorBase.purple,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(Dimension.safeBlockVertical * 3),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: ColorBase.purple, width: 1.5)),
                      child: Column(
                        children: [
                          Image.asset(
                            "${Environments.imageAssets}sosio.jpg",
                          ),
                          Text(
                            "25%",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.5,
                                color: ColorBase.purple,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(Dimension.safeBlockVertical * 3),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: ColorBase.purple, width: 1.5)),
                      child: Column(
                        children: [
                          Image.asset(
                            "${Environments.imageAssets}history.jpg",
                          ),
                          Text(
                            "25%",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.5,
                                color: ColorBase.purple,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(Dimension.safeBlockVertical * 3),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: ColorBase.purple, width: 1.5)),
                      child: Column(
                        children: [
                          Image.asset(
                            "${Environments.imageAssets}backup.jpg",
                          ),
                          Text(
                            "25%",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.5,
                                color: ColorBase.purple,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: Dimension.safeBlockVertical * 1.25,
            color: Colors.grey[200],
            thickness: Dimension.safeBlockVertical * 1.25,
          ),
          Container(
            width: Dimension.screenWidth,
            color: Colors.white,
            padding: EdgeInsets.only(
                top: Dimension.safeBlockVertical * 2,
                bottom: Dimension.safeBlockVertical * 2,
                left: Dimension.safeBlockVertical * 2,
                right: Dimension.safeBlockVertical * 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Laporan Belajar Mingguan",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: Dimension.safeBlockVertical * 2,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Selengkapnya",
                      style: TextStyle(
                          color: ColorBase.lighterBlue,
                          fontSize: Dimension.safeBlockVertical * 1.75,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimension.safeBlockVertical * 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "50 Video",
                          style: TextStyle(
                              fontSize: Dimension.safeBlockVertical * 1.65,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: Dimension.safeBlockVertical,
                        ),
                        Text(
                          "Ditonton",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: Dimension.safeBlockVertical * 1.65,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "3 Mata Pelajaran",
                          style: TextStyle(
                              fontSize: Dimension.safeBlockVertical * 1.65,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: Dimension.safeBlockVertical,
                        ),
                        Text(
                          "Dipelajari",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: Dimension.safeBlockVertical * 1.65,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "5 Ujian",
                          style: TextStyle(
                              fontSize: Dimension.safeBlockVertical * 1.65,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: Dimension.safeBlockVertical,
                        ),
                        Text(
                          "Dikerjakan",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: Dimension.safeBlockVertical * 1.65,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          "${Environments.imageAssets}line_chart.png",
                          height: Dimension.safeBlockVertical * 2,
                          width: Dimension.safeBlockVertical * 6,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          height: Dimension.safeBlockVertical,
                        ),
                        Text(
                          "Naik 13 %",
                          style: TextStyle(
                              color: ColorBase.cyan,
                              fontSize: Dimension.safeBlockVertical * 1.65,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Divider(
            height: Dimension.safeBlockVertical * 1.25,
            color: Colors.grey[200],
            thickness: Dimension.safeBlockVertical * 1.25,
          ),
          Container(
            width: Dimension.screenWidth,
            color: Colors.white,
            padding: EdgeInsets.only(
                top: Dimension.safeBlockVertical * 2,
                bottom: Dimension.safeBlockVertical * 2,
                left: Dimension.safeBlockVertical * 2,
                right: Dimension.safeBlockVertical * 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ujian-Ujian",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: Dimension.safeBlockVertical * 2,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: Dimension.safeBlockVertical * 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        top: Dimension.safeBlockVertical * 2.5,
                        bottom: Dimension.safeBlockVertical * 2.5,
                      ),
                      width: Dimension.screenWidth * 0.25,
                      decoration: BoxDecoration(
                          color: ColorBase.bluePastel,
                          borderRadius: BorderRadius.all(Radius.circular(
                              Dimension.safeBlockVertical * 2))),
                      alignment: Alignment.center,
                      child: Text(
                        "UTBK",
                        style: TextStyle(
                          fontSize: Dimension.safeBlockVertical * 2.25,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: Dimension.safeBlockVertical * 2.5,
                        bottom: Dimension.safeBlockVertical * 2.5,
                      ),
                      width: Dimension.screenWidth * 0.25,
                      decoration: BoxDecoration(
                          color: ColorBase.redPastel,
                          borderRadius: BorderRadius.all(Radius.circular(
                              Dimension.safeBlockVertical * 2))),
                      alignment: Alignment.center,
                      child: Text(
                        "MANDIRI",
                        style: TextStyle(
                            fontSize: Dimension.safeBlockVertical * 2.25,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: Dimension.safeBlockVertical * 2.5,
                        bottom: Dimension.safeBlockVertical * 2.5,
                      ),
                      width: Dimension.screenWidth * 0.25,
                      decoration: BoxDecoration(
                          color: ColorBase.greenPastel,
                          borderRadius: BorderRadius.all(Radius.circular(
                              Dimension.safeBlockVertical * 2))),
                      alignment: Alignment.center,
                      child: Text(
                        "UN",
                        style: TextStyle(
                            fontSize: Dimension.safeBlockVertical * 2.25,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: Dimension.safeBlockVertical * 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hasil Ujianmu",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: Dimension.safeBlockVertical * 1.75,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Selengkapnya",
                      style: TextStyle(
                          color: ColorBase.lighterBlue,
                          fontSize: Dimension.safeBlockVertical * 1.75,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimension.safeBlockVertical,
                ),
                Text(
                  "ayo tingkatkan lagi, ada yang kurang nih!",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: Dimension.safeBlockVertical * 1.75,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: Dimension.safeBlockVertical * 2,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding:
                              EdgeInsets.all(Dimension.safeBlockVertical * 2),
                          decoration: BoxDecoration(
                            color: ColorBase.orange,
                            shape: BoxShape.circle,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "60",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.5,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      flex: 1,
                    ),
                    SizedBox(
                      width: Dimension.safeBlockVertical * 2,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Latihan Soal Matematika",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.75,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: Dimension.safeBlockVertical,
                          ),
                          Text(
                            "Saintek ST-01",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.75,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      flex: 5,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Coba lagi",
                          style: TextStyle(
                              fontSize: Dimension.safeBlockVertical * 1.75,
                              color: ColorBase.cyan,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      flex: 2,
                    )
                  ],
                ),
                SizedBox(
                  height: Dimension.safeBlockVertical * 2,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding:
                              EdgeInsets.all(Dimension.safeBlockVertical * 2),
                          decoration: BoxDecoration(
                            color: ColorBase.redPastel,
                            shape: BoxShape.circle,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "30",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.5,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      flex: 1,
                    ),
                    SizedBox(
                      width: Dimension.safeBlockVertical * 2,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Latihan Soal Kimia",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.75,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: Dimension.safeBlockVertical,
                          ),
                          Text(
                            "Saintek ST-01",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.75,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      flex: 5,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Coba lagi",
                          style: TextStyle(
                              fontSize: Dimension.safeBlockVertical * 1.75,
                              color: ColorBase.cyan,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      flex: 2,
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: Dimension.safeBlockVertical * 1.25,
            color: Colors.grey[200],
            thickness: Dimension.safeBlockVertical * 1.25,
          ),
          Container(
            width: Dimension.screenWidth,
            color: Colors.white,
            padding: EdgeInsets.only(
                top: Dimension.safeBlockVertical * 2,
                bottom: Dimension.safeBlockVertical * 2,
                left: Dimension.safeBlockVertical * 2,
                right: Dimension.safeBlockVertical * 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ZenXplore",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: Dimension.safeBlockVertical * 2,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: Dimension.safeBlockVertical * 1.5,
                ),
                Container(
                  height: Dimension.safeBlockVertical * 25,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(
                            right: Dimension.safeBlockVertical * 2),
                        child: Image.asset(
                          index == 0
                              ? "${Environments.imageAssets}IMG_31131.jpg"
                              : "${Environments.imageAssets}IMG_3114.jpg",
                          height: Dimension.safeBlockVertical * 40,
                          width: Dimension.safeBlockVertical * 35,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: Dimension.safeBlockVertical * 4.5,
                ),
                Text(
                  "Hype Minggu Ini",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: Dimension.safeBlockVertical * 2,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: Dimension.safeBlockVertical * 1.5,
                ),
                Container(
                  height: Dimension.safeBlockVertical * 25,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(
                            right: Dimension.safeBlockVertical * 2),
                        child: Image.asset(
                          index == 0
                              ? "${Environments.imageAssets}IMG_3113.jpg"
                              : "${Environments.imageAssets}IMG_311411.jpg",
                          height: Dimension.safeBlockVertical * 40,
                          width: Dimension.safeBlockVertical * 35,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: Dimension.safeBlockVertical * 4.5,
                ),
                Text(
                  "Kelas 5 Menit",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: Dimension.safeBlockVertical * 2,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: Dimension.safeBlockVertical * 1.5,
                ),
                Container(
                  height: Dimension.safeBlockVertical * 27,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: EdgeInsets.only(
                              right: Dimension.safeBlockVertical * 2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                index == 0
                                    ? "${Environments.imageAssets}IMG_3115.jpg"
                                    : "${Environments.imageAssets}IMG_3116.jpg",
                              ),
                              Text(
                                "Kelas 5 Menit",
                                style: TextStyle(
                                    fontSize: Dimension.safeBlockVertical * 2,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                index == 0
                                    ? "Lemah tapi dominan"
                                    : "Fenomena barang inferior",
                                style: TextStyle(
                                  fontSize: Dimension.safeBlockVertical * 2,
                                ),
                              )
                            ],
                          ));
                    },
                  ),
                ),
                SizedBox(
                  height: Dimension.safeBlockVertical * 4.5,
                ),
                Text(
                  "Jadi Jagoan",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: Dimension.safeBlockVertical * 2,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: Dimension.safeBlockVertical * 1.5,
                ),
                Image.asset("${Environments.imageAssets}IMG_3117.jpg"),
                SizedBox(
                  height: Dimension.safeBlockVertical * 4.5,
                ),
                Text(
                  "Sama-Sama Belajar",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: Dimension.safeBlockVertical * 2,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: Dimension.safeBlockVertical * 1.5,
                ),
                Container(
                  height: Dimension.safeBlockVertical * 25,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(
                            right: Dimension.safeBlockVertical * 2),
                        child: Image.asset(
                          index == 0
                              ? "${Environments.imageAssets}IMG_3118.jpg"
                              : "${Environments.imageAssets}IMG_3119.jpg",
                          height: Dimension.safeBlockVertical * 40,
                          width: Dimension.safeBlockVertical * 35,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: Dimension.safeBlockVertical * 4.5,
                ),
                Text(
                  "Belajar Tematik",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: Dimension.safeBlockVertical * 2,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: Dimension.safeBlockVertical * 1.5,
                ),
                Image.asset(
                  "${Environments.imageAssets}IMG_31191.jpg",
                  width: Dimension.screenWidth,
                ),
                SizedBox(
                  height: Dimension.safeBlockVertical * 4.5,
                ),
                Text(
                  "Ekskul Zen",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: Dimension.safeBlockVertical * 2,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: Dimension.safeBlockVertical * 1.5,
                ),
                Image.asset(
                  "${Environments.imageAssets}IMG_3120.jpg",
                  width: Dimension.screenWidth,
                ),
                SizedBox(
                  height: Dimension.safeBlockVertical * 4.5,
                ),
                Text(
                  "Ada apa hari ini",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: Dimension.safeBlockVertical * 2,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: Dimension.safeBlockVertical * 1.5,
                ),
                Container(
                  height: Dimension.safeBlockVertical * 33,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(
                            right: Dimension.safeBlockVertical * 2),
                        child: Image.asset(
                          index == 0
                              ? "${Environments.imageAssets}IMG_3121.jpg"
                              : "${Environments.imageAssets}IMG_3122.jpg",
                          height: Dimension.safeBlockVertical * 40,
                          width: Dimension.safeBlockVertical * 35,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: Dimension.safeBlockVertical * 2,
                ),
              ],
            ),
          )
        ],
      ))),
    );
  }

  CarouselSlider banner() {
    final List<String> imgSlider = [
      "${Environments.imageAssets}Ads.jpg",
      "${Environments.imageAssets}IMG_3119.jpg",
      "${Environments.imageAssets}IMG_3118.jpg"
    ];

    return CarouselSlider(
      items: imgSlider.map((fileimage) {
        return Container(
            width: Dimension.screenWidth,
            child: GestureDetector(
              child: Image.asset(
                fileimage,
                fit: BoxFit.fill,
                width: Dimension.screenWidth * 0.8,
              ),
            ));
      }).toList(),
      options: CarouselOptions(
          height: Dimension.safeBlockVertical * 25,
          aspectRatio: ((Dimension.safeBlockVertical) * 0.7) /
              (Dimension.safeBlockHorizontal),
          viewportFraction: 1.0,
          autoPlay: true,
          enableInfiniteScroll: true),
    );
  }

  Widget searchField() {
    return TextField(
      maxLines: 1,
      showCursor: true,
      cursorColor: ColorBase.purple,
      keyboardType: TextInputType.text,
      enabled: false,
      decoration: InputDecoration(
          filled: true,
          hintStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
          fillColor: Colors.grey[200],
          hintText: "Mau belajar apa hari ini?",
          isDense: true,
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorBase.purple),
            borderRadius: BorderRadius.all(Radius.circular(9.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorBase.purple),
            borderRadius: BorderRadius.all(Radius.circular(9.0)),
          ),
          suffixIcon: Icon(Icons.search)),
    );
  }
}
