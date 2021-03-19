import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zenius_redesign/constants/Colors.dart';
import 'package:zenius_redesign/constants/Environments.dart';
import 'package:zenius_redesign/utils/Dimension.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  var isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          top: false,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: Dimension.screenWidth,
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [
                          const Color(0xFF7824B7),
                          const Color(0xFF561B9B),
                        ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(1.0, 0.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  padding: EdgeInsets.only(
                      top: Dimension.safeBlockVertical * 5,
                      bottom: Dimension.safeBlockVertical * 2,
                      left: Dimension.safeBlockVertical * 2,
                      right: Dimension.safeBlockVertical * 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                          "${Environments.imageAssets}profile_photo.png"
                      ),
                      SizedBox(
                        width: Dimension.safeBlockVertical * 2,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Abdur",
                            style: TextStyle(
                                fontSize: Dimension.safeBlockVertical * 2.5,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(
                            height: Dimension.safeBlockHorizontal * 1.5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.graduationCap,
                                size: Dimension.safeBlockVertical * 2,
                                color: ColorBase.white,),
                              SizedBox(
                                width: Dimension.safeBlockHorizontal * 2,
                              ),
                              Text(
                                "General",
                                style: TextStyle(
                                  color: ColorBase.white,
                                  fontSize: Dimension.safeBlockVertical * 1.75,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: Dimension.safeBlockHorizontal * 1.5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.solidEnvelope,
                                size: Dimension.safeBlockVertical * 2,
                                color: ColorBase.white,),
                              SizedBox(
                                width: Dimension.safeBlockHorizontal * 2,
                              ),
                              Text(
                                "mhd.abdur666@gmail.com",
                                style: TextStyle(
                                  color: ColorBase.white,
                                  fontSize: Dimension.safeBlockVertical * 1.75,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: Dimension.safeBlockHorizontal * 1.5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.phone,
                                size: Dimension.safeBlockVertical * 2,
                                color: ColorBase.white,),
                              SizedBox(
                                width: Dimension.safeBlockHorizontal * 2,
                              ),
                              Text(
                                "+6285601376740",
                                style: TextStyle(
                                  color: ColorBase.white,
                                  fontSize: Dimension.safeBlockVertical * 1.75,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  color: ColorBase.lighterGrey,
                  padding: EdgeInsets.all(Dimension.safeBlockVertical * 2),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: Dimension.screenWidth,
                          padding: EdgeInsets.all(Dimension.safeBlockVertical * 2),
                          decoration: BoxDecoration(
                            color: ColorBase.orangePastel,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Paket Premium",
                                style: TextStyle(
                                  fontSize: Dimension.safeBlockVertical * 2,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                              Text(
                                "Tidak ada",
                                style: TextStyle(
                                  fontSize: Dimension.safeBlockVertical * 1.75,
                                  color: Colors.red
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: Dimension.screenWidth,
                          padding: EdgeInsets.only(
                            top: Dimension.safeBlockVertical * 2,
                            bottom: Dimension.safeBlockVertical * 2,
                            left: Dimension.safeBlockVertical * 10,
                            right: Dimension.safeBlockVertical * 10,
                          ),
                          decoration: BoxDecoration(
                              color: ColorBase.white,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: Dimension.safeBlockVertical * 8.5,
                                    height: Dimension.safeBlockVertical * 8.5,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: ColorBase.purple,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset("${Environments.imageAssets}wpf_books.png"),
                                  ),
                                  SizedBox(
                                    height: Dimension.safeBlockVertical * 2,
                                  ),
                                  Text(
                                    "Pilih Paket Belajar",
                                    style: TextStyle(
                                      fontSize: Dimension.safeBlockHorizontal * 2.5
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: Dimension.safeBlockVertical * 8.5,
                                    height: Dimension.safeBlockVertical * 8.5,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: ColorBase.purple,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset("${Environments.imageAssets}ic_history.png"),
                                  ),
                                  SizedBox(
                                    height: Dimension.safeBlockVertical * 2,
                                  ),
                                  Text(
                                    "Riwayat Pembelian",
                                    style: TextStyle(
                                        fontSize: Dimension.safeBlockHorizontal * 2.5
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: Dimension.screenWidth,
                  color: ColorBase.white,
                  padding: EdgeInsets.all(Dimension.safeBlockVertical * 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pengaturan Umum",
                        style: TextStyle(
                          fontSize: Dimension.safeBlockVertical * 2,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Divider(
                        height: Dimension.safeBlockVertical * 0.1,
                        color: ColorBase.dividerColor,
                        thickness: Dimension.safeBlockVertical * 0.1,
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.solidPlayCircle,
                                size: Dimension.safeBlockVertical * 2.5,
                                color: ColorBase.black,
                              ),
                              SizedBox(
                                width: Dimension.safeBlockVertical * 1.5,
                              ),
                              Text(
                                "Putar Video Otomatis",
                                style: TextStyle(
                                  fontSize: Dimension.safeBlockVertical * 2,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: Dimension.safeBlockVertical * 2,
                            child: Switch(
                              value: isSwitched,
                              onChanged: (value){
                                setState(() {
                                  isSwitched=value;
                                  print(isSwitched);
                                });
                              },
                              activeTrackColor: Colors.purpleAccent,
                              activeColor: ColorBase.purple,
                              inactiveTrackColor: Colors.deepPurpleAccent,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Divider(
                        height: Dimension.safeBlockVertical * 0.1,
                        color: ColorBase.dividerColor,
                        thickness: Dimension.safeBlockVertical * 0.1,
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.solidUserCircle,
                                size: Dimension.safeBlockVertical * 2.5,
                                color: ColorBase.black,
                              ),
                              SizedBox(
                                width: Dimension.safeBlockVertical * 1.5,
                              ),
                              Text(
                                "Ubah Profil",
                                style: TextStyle(
                                  fontSize: Dimension.safeBlockVertical * 2,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            FontAwesomeIcons.chevronRight,
                            size: Dimension.safeBlockVertical * 2.5,
                            color: ColorBase.black,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Divider(
                        height: Dimension.safeBlockVertical * 0.1,
                        color: ColorBase.dividerColor,
                        thickness: Dimension.safeBlockVertical * 0.1,
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.users,
                                size: Dimension.safeBlockVertical * 2.5,
                                color: ColorBase.black,
                              ),
                              SizedBox(
                                width: Dimension.safeBlockVertical * 1.5,
                              ),
                              Text(
                                "Gabung Kelas",
                                style: TextStyle(
                                  fontSize: Dimension.safeBlockVertical * 2,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            FontAwesomeIcons.chevronRight,
                            size: Dimension.safeBlockVertical * 2.5,
                            color: ColorBase.black,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Divider(
                        height: Dimension.safeBlockVertical * 0.1,
                        color: ColorBase.dividerColor,
                        thickness: Dimension.safeBlockVertical * 0.1,
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.userLock,
                                size: Dimension.safeBlockVertical * 2.5,
                                color: ColorBase.black,
                              ),
                              SizedBox(
                                width: Dimension.safeBlockVertical * 1.5,
                              ),
                              Text(
                                "Ubah Kata Sandi",
                                style: TextStyle(
                                  fontSize: Dimension.safeBlockVertical * 2,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            FontAwesomeIcons.chevronRight,
                            size: Dimension.safeBlockVertical * 2.5,
                            color: ColorBase.black,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Divider(
                        height: Dimension.safeBlockVertical * 0.1,
                        color: ColorBase.dividerColor,
                        thickness: Dimension.safeBlockVertical * 0.1,
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 5,
                      ),
                      Text(
                        "Informasi",
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.solidPlayCircle,
                                size: Dimension.safeBlockVertical * 2.5,
                                color: ColorBase.black,
                              ),
                              SizedBox(
                                width: Dimension.safeBlockVertical * 1.5,
                              ),
                              Text(
                                "Frequently Asked Question (FAQ)",
                                style: TextStyle(
                                  fontSize: Dimension.safeBlockVertical * 2,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            FontAwesomeIcons.chevronRight,
                            size: Dimension.safeBlockVertical * 2.5,
                            color: ColorBase.black,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Divider(
                        height: Dimension.safeBlockVertical * 0.1,
                        color: ColorBase.dividerColor,
                        thickness: Dimension.safeBlockVertical * 0.1,
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.solidUserCircle,
                                size: Dimension.safeBlockVertical * 2.5,
                                color: ColorBase.black,
                              ),
                              SizedBox(
                                width: Dimension.safeBlockVertical * 1.5,
                              ),
                              Text(
                                "Kebijakan Privasi",
                                style: TextStyle(
                                  fontSize: Dimension.safeBlockVertical * 2,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            FontAwesomeIcons.chevronRight,
                            size: Dimension.safeBlockVertical * 2.5,
                            color: ColorBase.black,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Divider(
                        height: Dimension.safeBlockVertical * 0.1,
                        color: ColorBase.dividerColor,
                        thickness: Dimension.safeBlockVertical * 0.1,
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.phone,
                                size: Dimension.safeBlockVertical * 2.5,
                                color: ColorBase.black,
                              ),
                              SizedBox(
                                width: Dimension.safeBlockVertical * 1.5,
                              ),
                              Text(
                                "Hubungi Kami",
                                style: TextStyle(
                                  fontSize: Dimension.safeBlockVertical * 2,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            FontAwesomeIcons.chevronRight,
                            size: Dimension.safeBlockVertical * 2.5,
                            color: ColorBase.black,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Divider(
                        height: Dimension.safeBlockVertical * 0.1,
                        color: ColorBase.dividerColor,
                        thickness: Dimension.safeBlockVertical * 0.1,
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.exclamationCircle,
                                size: Dimension.safeBlockVertical * 2.5,
                                color: ColorBase.black,
                              ),
                              SizedBox(
                                width: Dimension.safeBlockVertical * 1.5,
                              ),
                              Text(
                                "Lapor",
                                style: TextStyle(
                                  fontSize: Dimension.safeBlockVertical * 2,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            FontAwesomeIcons.chevronRight,
                            size: Dimension.safeBlockVertical * 2.5,
                            color: ColorBase.black,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Dimension.safeBlockVertical * 2,
                      ),
                      Divider(
                        height: Dimension.safeBlockVertical * 0.1,
                        color: ColorBase.dividerColor,
                        thickness: Dimension.safeBlockVertical * 0.1,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
