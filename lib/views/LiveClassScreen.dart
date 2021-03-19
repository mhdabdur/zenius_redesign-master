import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zenius_redesign/constants/Colors.dart';
import 'package:zenius_redesign/constants/Environments.dart';
import 'package:zenius_redesign/constants/Navigation.dart';
import 'package:zenius_redesign/models/ClassModel.dart';
import 'package:zenius_redesign/utils/Dimension.dart';

class LiveScreenScreen extends StatefulWidget {
  @override
  _LiveScreenScreenState createState() => _LiveScreenScreenState();
}

class _LiveScreenScreenState extends State<LiveScreenScreen> {
  List<ClassModel> listClass = [
    ClassModel(
        header: "PERSIAPAN SOAL UJIAN",
        title: "PERSIAPAN UTBK IPS",
        teacher: "Hilman",
        meetingModel: "IPS",
        date: "29 Mar",
        fulldate: "29 03 2021",
        clock: "03:00 PM",
        heldFor: "30 Menit",
        imgUrl: "center_section_1.jpg",
        status: "lock"
    ),
    ClassModel(
        header: "PERSIAPAN SOAL UJIAN",
        title: "MATEMATIKA SAINTEK",
        teacher: "Wisnu",
        meetingModel: "Matematika",
        date: "30 Mar",
        fulldate: "30 03 2021",
        clock: "09:00 AM",
        heldFor: "30 Menit",
        imgUrl: "center_section_3.jpg",
        status: "lock"
    ),
    ClassModel(
        header: "PERSIAPAN SOAL UJIAN",
        title: "KIMIA UTBK",
        teacher: "Yoki",
        meetingModel: "Kimia",
        date: "29 Mar",
        fulldate: "29-03-2021",
        clock: "03:00 PM",
        heldFor: "30 Menit",
        imgUrl: "center_section_2.jpg",
        status: "unlocked"
    ),
  ];

  List<ClassModel> listSubject = [
    ClassModel(
        header: "PERSIAPAN SOAL UJIAN",
        title: "MATEMATIKA WAJIB",
        teacher: "Setiawan",
        meetingModel: "Matematika",
        date: "29 Des",
        clock: "28 Feb",
        heldFor: "2 Bulan",
        imgUrl: "center_section_4.jpg"
    ),
    ClassModel(
        header: "PERSIAPAN SOAL UJIAN",
        title: "BAHASA INGGRIS WAJIB",
        teacher: "Calieda",
        meetingModel: "Bahasa Inggris",
        date: "30 Jan",
        clock: "30 Mar",
        heldFor: "2 Bulan",
        imgUrl: "center_section_5.jpg"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              brightness: Brightness.light,
              backgroundColor: ColorBase.purple,
              toolbarHeight: Dimension.safeBlockVertical * 18.5,
              centerTitle: false,
              title: Text(
                "Live Classes",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                ),
              ),
              actions: [
                GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(NavigationConstant.Filter);
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
                          borderRadius: new BorderRadius.circular(8)
                      ),
                      child: Row(
                        children: [
                          Text(
                              "Kelas 11 - IPA",
                              style: TextStyle(
                                  fontSize: Dimension.safeBlockVertical * 2,
                                  color: ColorBase.orange,
                                  fontWeight: FontWeight.w500
                              )),
                          SizedBox(width: Dimension.safeBlockHorizontal,),
                          Icon(FontAwesomeIcons.caretDown, size: Dimension.safeBlockVertical * 2.5, color: ColorBase.orange)
                        ],
                      ),
                    ))
              ],
            bottom: PreferredSize(
              child: Container(
                margin: EdgeInsets.all(Dimension.safeBlockVertical * 2),
                height: Dimension.safeBlockVertical * 6.5,
                decoration: BoxDecoration(
                  color: ColorBase.darkerPurple,
                  borderRadius: BorderRadius.all(Radius.circular(Dimension.safeBlockHorizontal * 6.5))
                ),
                child: TabBar(
                  labelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: new BubbleTabIndicator(
                    indicatorHeight: Dimension.safeBlockVertical * 6,
                    indicatorColor: Colors.orange,
                    tabBarIndicatorSize: TabBarIndicatorSize.tab,
                  ),
                  tabs: [
                    Tab(child: Text("Kelas"),),
                    Tab(child: Text("Subjek"),),
                    Tab(child: Text("Jadwal"),)
                  ],
                ),
              ),
              preferredSize: Size.fromHeight(Dimension.safeBlockVertical * 15),
            )
          ),
          backgroundColor: Colors.white,
          body: TabBarView(
              children: [
                ListView.builder(
                  itemCount: listClass.length,
                  itemBuilder: (context, int index) {
                    var data = listClass[index];
                    return GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        Navigator.of(context).pushNamed(NavigationConstant.DetailClass, arguments: data);
                      },
                      child: Container(
                        margin: EdgeInsets.all(Dimension.safeBlockVertical * 2),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          elevation: 5,
                          child: Column(
                            children: [
                              Image.asset("${Environments.imageAssets}${data.imgUrl}"),
                              Container(
                                padding: EdgeInsets.all(Dimension.safeBlockVertical * 2),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data.header,
                                      style: TextStyle(
                                          fontSize: Dimension.safeBlockVertical * 1.5,
                                          color: ColorBase.purple
                                      ),
                                    ),
                                    SizedBox(
                                      height: Dimension.safeBlockVertical * 1.5,
                                    ),
                                    Text(
                                      data.title,
                                      style: TextStyle(
                                          fontSize: Dimension.safeBlockVertical * 2.75,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(
                                      height: Dimension.safeBlockVertical * 1.5,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          data.teacher,
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
                                          data.meetingModel,
                                          style: TextStyle(
                                              fontSize: Dimension.safeBlockVertical * 2,
                                              color: Colors.grey
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Dimension.safeBlockVertical * 1.5,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              data.date,
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
                                              data.clock,
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
                                              data.heldFor,
                                              style: TextStyle(
                                                  fontSize: Dimension.safeBlockVertical * 2,
                                                  color: ColorBase.purple
                                              ),
                                            ),
                                          ],
                                        ),
                                        data.status != "lock" ? Image.asset("${Environments.imageAssets}free_sign.png") : Image.asset("${Environments.imageAssets}ic_round-password.png")
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ),
                    );
                  }),
                ListView.builder(
                    itemCount: listSubject.length,
                    itemBuilder: (context, int index) {
                      var data = listSubject[index];
                      return GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          Navigator.of(context).pushNamed(NavigationConstant.DetailSubject, arguments: data);
                        },
                        child: Container(
                            margin: EdgeInsets.all(Dimension.safeBlockVertical * 2),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              elevation: 5,
                              child: Column(
                                children: [
                                  Image.asset("${Environments.imageAssets}${data.imgUrl}"),
                                  Container(
                                    padding: EdgeInsets.all(Dimension.safeBlockVertical * 2),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          data.title,
                                          style: TextStyle(
                                              fontSize: Dimension.safeBlockVertical * 2.75,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        SizedBox(
                                          height: Dimension.safeBlockVertical * 1.5,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              data.teacher,
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
                                              data.meetingModel,
                                              style: TextStyle(
                                                  fontSize: Dimension.safeBlockVertical * 2,
                                                  color: Colors.grey
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: Dimension.safeBlockVertical * 1.5,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  data.date,
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
                                                  data.clock,
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
                                                  data.heldFor,
                                                  style: TextStyle(
                                                      fontSize: Dimension.safeBlockVertical * 2,
                                                      color: ColorBase.purple
                                                  ),
                                                ),
                                              ],
                                            ),
                                            index > 0 ? Image.asset("${Environments.imageAssets}free_sign.png") : Image.asset("${Environments.imageAssets}ic_round-password.png")
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                        ),
                      );
                    }),
                Column(
                  children: [
                    Text("Kelas")
                  ],
                )
              ]),
        ));
  }
}
