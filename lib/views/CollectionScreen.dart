import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zenius_redesign/constants/Colors.dart';
import 'package:zenius_redesign/constants/Environments.dart';
import 'package:zenius_redesign/utils/Dimension.dart';

class CollectionScreen extends StatefulWidget {
  @override
  _CollectionScreenState createState() => _CollectionScreenState();
}

class _CollectionScreenState extends State<CollectionScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              brightness: Brightness.light,
              backgroundColor: ColorBase.white,
              elevation: 0.0,
              bottom: PreferredSize(
                child: Container(
                  height: Dimension.safeBlockVertical * 5.5,
                  margin: EdgeInsets.only(
                      bottom: Dimension.safeBlockVertical * 2,
                      left: Dimension.safeBlockVertical * 2,
                      right: Dimension.safeBlockVertical * 2),
                  decoration: BoxDecoration(
                      color: ColorBase.grey,
                      borderRadius: BorderRadius.all(Radius.circular(Dimension.safeBlockHorizontal * 6.5))
                  ),
                  child: TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: new BubbleTabIndicator(
                      indicatorHeight: Dimension.safeBlockVertical * 4.5,
                      indicatorColor: ColorBase.purple,
                      tabBarIndicatorSize: TabBarIndicatorSize.tab,
                    ),
                    tabs: [
                      Tab(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.download,
                            size: Dimension.safeBlockVertical * 2,),
                          SizedBox(
                            width: Dimension.safeBlockVertical,
                          ),
                          Text(
                            "Unduhan",
                            style: TextStyle(
                              fontSize: Dimension.safeBlockVertical * 2
                            ),),
                        ],
                      )),
                      Tab(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.bookmark,
                            size: Dimension.safeBlockVertical * 2,),
                          SizedBox(
                            width: Dimension.safeBlockVertical,
                          ),
                          Text(
                            "Penanda",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 2
                            ),),
                        ],
                      )),
                    ],
                  ),
                ),
                preferredSize: Size.fromHeight(20),
              )
          ),
          backgroundColor: Colors.white,
          body: TabBarView(
              children: [
                Container(
                  padding: EdgeInsets.all(Dimension.safeBlockVertical * 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Text(
                        "Video Penjelasan",
                        style: TextStyle(
                          fontSize: Dimension.safeBlockVertical * 2,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Persamaan Linear Satu Variabel - Teori",
                            style: TextStyle(
                              fontSize: Dimension.safeBlockVertical * 1.75,
                              color: ColorBase.grey,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          Icon(
                            FontAwesomeIcons.solidBookmark,
                            size: Dimension.safeBlockVertical * 2,
                            color: ColorBase.black,
                          )
                        ],
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: Dimension.safeBlockVertical * 10,
                            width: Dimension.safeBlockVertical * 15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              border: Border.all(
                                color: ColorBase.grey,
                                width: 0.5
                              )
                            ),
                            child: Image.asset(
                              "${Environments.imageAssets}math.jpg",
                              height: Dimension.safeBlockVertical * 18,
                              width: Dimension.safeBlockVertical * 16.5,),
                          ),
                          SizedBox(
                            width: Dimension.safeBlockVertical * 2,
                          ),
                          Text(
                            "Persamaan Linear Satu Variabel",
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.75,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Divider(
                        height: Dimension.safeBlockVertical * 0.1,
                        color: ColorBase.grey,
                        thickness: Dimension.safeBlockVertical * 0.1,
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Materi - Mutasi",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.75,
                                color: ColorBase.grey,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: Dimension.safeBlockVertical * 10,
                            width: Dimension.safeBlockVertical * 15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                    color: ColorBase.grey,
                                    width: 0.5
                                )
                            ),
                            child: Image.asset(
                              "${Environments.imageAssets}math.jpg",
                              height: Dimension.safeBlockVertical * 18,
                              width: Dimension.safeBlockVertical * 16.5,),
                          ),
                          SizedBox(
                            width: Dimension.safeBlockVertical * 2,
                          ),
                          Text(
                            "Mutagen",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.75,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Divider(
                        height: Dimension.safeBlockVertical * 0.1,
                        color: ColorBase.grey,
                        thickness: Dimension.safeBlockVertical * 0.1,
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 3,
                      ),
                      Text(
                        "Latihan Soal/Ujian",
                        style: TextStyle(
                            fontSize: Dimension.safeBlockVertical * 1.75,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(Dimension.safeBlockVertical * 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Text(
                        "Video Penjelasan",
                        style: TextStyle(
                            fontSize: Dimension.safeBlockVertical * 2,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Persamaan Linear Satu Variabel - Teori",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.75,
                                color: ColorBase.grey,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Icon(
                            FontAwesomeIcons.solidBookmark,
                            size: Dimension.safeBlockVertical * 2,
                            color: ColorBase.black,
                          )
                        ],
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: Dimension.safeBlockVertical * 10,
                            width: Dimension.safeBlockVertical * 15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                    color: ColorBase.grey,
                                    width: 0.5
                                )
                            ),
                            child: Image.asset(
                              "${Environments.imageAssets}math.jpg",
                              height: Dimension.safeBlockVertical * 18,
                              width: Dimension.safeBlockVertical * 16.5,),
                          ),
                          SizedBox(
                            width: Dimension.safeBlockVertical * 2,
                          ),
                          Text(
                            "Persamaan Linear Satu Variabel",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.75,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Divider(
                        height: Dimension.safeBlockVertical * 0.1,
                        color: ColorBase.grey,
                        thickness: Dimension.safeBlockVertical * 0.1,
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Materi - Mutasi",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.75,
                                color: ColorBase.grey,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Icon(
                            FontAwesomeIcons.solidBookmark,
                            size: Dimension.safeBlockVertical * 2,
                            color: ColorBase.black,
                          )
                        ],
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: Dimension.safeBlockVertical * 10,
                            width: Dimension.safeBlockVertical * 15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                    color: ColorBase.grey,
                                    width: 0.5
                                )
                            ),
                            child: Image.asset(
                              "${Environments.imageAssets}math.jpg",
                              height: Dimension.safeBlockVertical * 18,
                              width: Dimension.safeBlockVertical * 16.5,),
                          ),
                          SizedBox(
                            width: Dimension.safeBlockVertical * 2,
                          ),
                          Text(
                            "Konsep Dasar Mutasi",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.75,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Divider(
                        height: Dimension.safeBlockVertical * 0.1,
                        color: ColorBase.grey,
                        thickness: Dimension.safeBlockVertical * 0.1,
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Materi - Kalimat-Kalimat Logika",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.75,
                                color: ColorBase.grey,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Icon(
                            FontAwesomeIcons.solidBookmark,
                            size: Dimension.safeBlockVertical * 2,
                            color: ColorBase.black,
                          )
                        ],
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: Dimension.safeBlockVertical * 10,
                            width: Dimension.safeBlockVertical * 15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                    color: ColorBase.grey,
                                    width: 0.5
                                )
                            ),
                            child: Image.asset(
                              "${Environments.imageAssets}math.jpg",
                              height: Dimension.safeBlockVertical * 18,
                              width: Dimension.safeBlockVertical * 16.5,),
                          ),
                          SizedBox(
                            width: Dimension.safeBlockVertical * 2,
                          ),
                          Text(
                            "Pendahuluan",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.75,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Divider(
                        height: Dimension.safeBlockVertical * 0.1,
                        color: ColorBase.grey,
                        thickness: Dimension.safeBlockVertical * 0.1,
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 3,
                      ),
                      Text(
                        "Latihan Soal/Ujian",
                        style: TextStyle(
                            fontSize: Dimension.safeBlockVertical * 1.75,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ));
  }
}
