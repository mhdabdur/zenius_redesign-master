import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zenius_redesign/constants/Colors.dart';
import 'package:zenius_redesign/constants/Environments.dart';
import 'package:zenius_redesign/models/ClassModel.dart';
import 'package:zenius_redesign/utils/Dimension.dart';

class DetailSubjectScreen extends StatefulWidget {
  final ClassModel data;

  DetailSubjectScreen({this.data});

  @override
  _DetailSubjectScreenState createState() => _DetailSubjectScreenState();
}

class _DetailSubjectScreenState extends State<DetailSubjectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: ColorBase.purple,
          actions: [
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {})
          ],
        ),
        body: SafeArea(
          top: false,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: Dimension.screenWidth,
                  color: ColorBase.purple,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(Dimension.safeBlockVertical * 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${widget.data.title}",
                              style: TextStyle(
                                  fontSize: Dimension.safeBlockVertical * 3,
                                  fontWeight: FontWeight.w500,
                                  color: ColorBase.white
                              ),
                            ),
                            SizedBox(
                              height: Dimension.safeBlockVertical * 1.5,
                            ),
                            Container(
                              width: Dimension.screenWidth * 0.5,
                              child: LinearProgressIndicator(
                                value: 0.25,
                                backgroundColor: Colors.purple[200],
                                valueColor: AlwaysStoppedAnimation(Colors.purple),
                              ),
                            ),
                            SizedBox(
                              height: Dimension.safeBlockVertical * 1.5,
                            ),
                            Text(
                              "25% proses pembelajaran",
                              style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 1.75,
                                color: Colors.white
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
                                  "7 Bab",
                                  style: TextStyle(
                                      fontSize: Dimension.safeBlockVertical * 1.75,
                                      color: Colors.white
                                  ),
                                ),
                                SizedBox(
                                  width: Dimension.safeBlockVertical,
                                ),
                                Text(
                                  "|",
                                  style: TextStyle(
                                      fontSize: Dimension.safeBlockVertical * 2.5,
                                      color: Colors.white
                                  ),
                                ),
                                SizedBox(
                                  width: Dimension.safeBlockVertical,
                                ),
                                Text(
                                  "26 Materi",
                                  style: TextStyle(
                                      fontSize: Dimension.safeBlockVertical * 1.75,
                                      color: Colors.white
                                  ),
                                ),
                                SizedBox(
                                  width: Dimension.safeBlockVertical,
                                ),
                                Text(
                                  "|",
                                  style: TextStyle(
                                      fontSize: Dimension.safeBlockVertical * 2.5,
                                      color: Colors.white
                                  ),
                                ),
                                SizedBox(
                                  width: Dimension.safeBlockVertical,
                                ),
                                Text(
                                  "9 Tes Evaluasi",
                                  style: TextStyle(
                                      fontSize: Dimension.safeBlockVertical * 1.75,
                                      color: Colors.white
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0.0,
                        bottom: 0.0,
                        child: Image.asset("${Environments.imageAssets}mtk_1.png")
                      )
                    ],
                  )
                ),
                Container(
                  child: DefaultTabController(
                      length: 2,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(Dimension.safeBlockVertical * 2),
                            padding: EdgeInsets.all(0.0),
                            width: Dimension.screenWidth * 0.6,
                            height: Dimension.safeBlockVertical * 4.5,
                            decoration: BoxDecoration(
                                color: ColorBase.grey,
                                borderRadius: BorderRadius.all(Radius.circular(Dimension.safeBlockHorizontal * 6.5))
                            ),
                            child: TabBar(
                              labelColor: Colors.black,
                              unselectedLabelColor: Colors.grey,
                              indicatorSize: TabBarIndicatorSize.tab,
                              indicator: new BubbleTabIndicator(
                                indicatorHeight: Dimension.safeBlockVertical * 4.5,
                                indicatorColor: Colors.orange,
                                tabBarIndicatorSize: TabBarIndicatorSize.tab,
                                insets: EdgeInsets.all(0.0),
                              ),
                              tabs: [
                                Tab(child: Text("Belum dipelajari", style: TextStyle(fontSize: Dimension.safeBlockVertical * 1.5),)),
                                Tab(child: Text("Sudah dipelajari", style: TextStyle(fontSize: Dimension.safeBlockVertical * 1.5),)),
                              ],
                            ),
                          ),
                          Container(
                            height: Dimension.screenHeight,
                            child: TabBarView(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(Dimension.safeBlockVertical * 2),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "04. Statistika Deskriptif",
                                                style: TextStyle(
                                                    fontSize: Dimension.safeBlockVertical * 2.25,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),
                                              Text(
                                                "Lihat Semua >",
                                                style: TextStyle(
                                                    fontSize: Dimension.safeBlockVertical * 2,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.lightBlue
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: Dimension.safeBlockVertical * 2,
                                          ),
                                          Container(
                                            height: Dimension.safeBlockVertical * 20,
                                            child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              shrinkWrap: true,
                                              itemCount: 4,
                                              itemBuilder: (context, index) {
                                                return Container(
                                                    margin:
                                                    EdgeInsets.only(right: Dimension.safeBlockVertical * 2),
                                                    child: Card(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                                        ),
                                                        child: Container(
                                                          padding: EdgeInsets.all(Dimension.safeBlockVertical * 2),
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              Icon(
                                                                FontAwesomeIcons.chartBar,
                                                                size: Dimension.safeBlockVertical * 10,
                                                                color: Colors.black,),
                                                              SizedBox(
                                                                height: Dimension.safeBlockVertical * 2,
                                                              ),
                                                              Text(
                                                                "Rumus Statistika",
                                                                style: TextStyle(
                                                                    fontSize: Dimension.safeBlockVertical * 2,
                                                                    fontWeight: FontWeight.w500
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                    )
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      height: Dimension.safeBlockVertical * 0.15,
                                      color: Colors.grey,
                                      thickness: Dimension.safeBlockVertical * 0.15,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(Dimension.safeBlockVertical * 2),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "05. Permutasi Kombinasi",
                                                style: TextStyle(
                                                    fontSize: Dimension.safeBlockVertical * 2.25,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),
                                              Text(
                                                "Lihat Semua >",
                                                style: TextStyle(
                                                    fontSize: Dimension.safeBlockVertical * 2,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.lightBlue
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: Dimension.safeBlockVertical * 2,
                                          ),
                                          Container(
                                            height: Dimension.safeBlockVertical * 20,
                                            child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              shrinkWrap: true,
                                              itemCount: 4,
                                              itemBuilder: (context, index) {
                                                return Container(
                                                    margin:
                                                    EdgeInsets.only(right: Dimension.safeBlockVertical * 2),
                                                    child: Card(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                                        ),
                                                        child: Container(
                                                          padding: EdgeInsets.all(Dimension.safeBlockVertical * 2),
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              Icon(
                                                                FontAwesomeIcons.chartPie,
                                                                size: Dimension.safeBlockVertical * 10,
                                                                color: Colors.black,),
                                                              SizedBox(
                                                                height: Dimension.safeBlockVertical * 2,
                                                              ),
                                                              Text(
                                                                "Rumus Permutasi",
                                                                style: TextStyle(
                                                                    fontSize: Dimension.safeBlockVertical * 2,
                                                                    fontWeight: FontWeight.w500
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                    )
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(Dimension.safeBlockVertical * 2),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "03. Dimensi Tiga",
                                                style: TextStyle(
                                                    fontSize: Dimension.safeBlockVertical * 2.25,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),
                                              Text(
                                                "Lihat Semua >",
                                                style: TextStyle(
                                                    fontSize: Dimension.safeBlockVertical * 2,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.lightBlue
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: Dimension.safeBlockVertical * 2,
                                          ),
                                          Container(
                                            height: Dimension.safeBlockVertical * 20,
                                            child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              shrinkWrap: true,
                                              itemCount: 4,
                                              itemBuilder: (context, index) {
                                                return Container(
                                                    margin:
                                                    EdgeInsets.only(right: Dimension.safeBlockVertical * 2),
                                                    child: Card(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                                        ),
                                                        child: Container(
                                                          padding: EdgeInsets.all(Dimension.safeBlockVertical * 2),
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              Icon(
                                                                FontAwesomeIcons.box,
                                                                size: Dimension.safeBlockVertical * 10,
                                                                color: Colors.black,),
                                                              SizedBox(
                                                                height: Dimension.safeBlockVertical * 2,
                                                              ),
                                                              Text(
                                                                "Rumus 3 Dimensi",
                                                                style: TextStyle(
                                                                    fontSize: Dimension.safeBlockVertical * 2,
                                                                    fontWeight: FontWeight.w500
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                    )
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      height: Dimension.safeBlockVertical * 0.15,
                                      color: Colors.grey,
                                      thickness: Dimension.safeBlockVertical * 0.15,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(Dimension.safeBlockVertical * 2),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "02. Integral Tentu",
                                                style: TextStyle(
                                                    fontSize: Dimension.safeBlockVertical * 2.25,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),
                                              Text(
                                                "Lihat Semua >",
                                                style: TextStyle(
                                                    fontSize: Dimension.safeBlockVertical * 2,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.lightBlue
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: Dimension.safeBlockVertical * 2,
                                          ),
                                          Container(
                                            height: Dimension.safeBlockVertical * 20,
                                            child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              shrinkWrap: true,
                                              itemCount: 4,
                                              itemBuilder: (context, index) {
                                                return Container(
                                                    margin:
                                                    EdgeInsets.only(right: Dimension.safeBlockVertical * 2),
                                                    child: Card(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                                        ),
                                                        child: Container(
                                                          padding: EdgeInsets.all(Dimension.safeBlockVertical * 2),
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              Icon(
                                                                FontAwesomeIcons.chartLine,
                                                                size: Dimension.safeBlockVertical * 10,
                                                                color: Colors.black,),
                                                              SizedBox(
                                                                height: Dimension.safeBlockVertical * 2,
                                                              ),
                                                              Text(
                                                                "Rumus Integral",
                                                                style: TextStyle(
                                                                    fontSize: Dimension.safeBlockVertical * 2,
                                                                    fontWeight: FontWeight.w500
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                    )
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ))
                ),
              ],
            ),
          ),
        )
    );
  }
}
