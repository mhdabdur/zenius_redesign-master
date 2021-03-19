import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zenius_redesign/components/RoundedButton.dart';
import 'package:zenius_redesign/constants/Colors.dart';
import 'package:zenius_redesign/constants/Dimens.dart';
import 'package:zenius_redesign/utils/Dimension.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  String selectedClass = "";
  String selectedMajor = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: Dimension.screenHeight,
          child: Stack(
            children: [
              SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                      left: Dimension.safeBlockVertical * 2,
                      right: Dimension.safeBlockVertical * 2,
                      top: Dimension.safeBlockVertical * 2,
                      bottom: Dimension.safeBlockVertical * 2,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(
                              FontAwesomeIcons.times,
                              size: Dimension.safeBlockVertical * 4,
                              color: Colors.black
                          ),
                        ),
                        SizedBox(
                          height: Dimension.safeBlockVertical * 2,
                        ),
                        Text(
                          "Pilih jenjang pendidikanmu!",
                          style: TextStyle(
                              fontSize: Dimension.safeBlockVertical * 4,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        SizedBox(
                          height: Dimension.safeBlockVertical * 2,
                        ),
                        Row(
                          children: [
                            Text(
                              "Kelas",
                              style: TextStyle(
                                  fontSize: Dimension.safeBlockVertical * 2.5,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              "*",
                              style: TextStyle(
                                  fontSize: Dimension.safeBlockVertical * 2.5,
                                  color: Colors.red
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: Dimension.safeBlockVertical * 2,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedClass = selectedClass == "1" ? "" : "1";
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: Dimension.safeBlockVertical * 1.5,
                                    bottom: Dimension.safeBlockVertical * 1.5,
                                    left: Dimension.safeBlockVertical * 2,
                                    right: Dimension.safeBlockVertical * 2),
                                decoration: BoxDecoration(
                                    color: selectedClass == "1" ? ColorBase.blue : Colors.transparent,
                                    borderRadius: BorderRadius.all(Radius.circular(Dimension.safeBlockVertical * 3)),
                                    border: Border.all(
                                        color: selectedClass == "1" ? ColorBase.blue : Colors.grey,
                                        width: 1.5
                                    )
                                ),
                                child: Text(
                                  "Kelas 1",
                                  style: TextStyle(
                                      fontSize: Dimension.safeBlockVertical * 2.25,
                                      color: selectedClass == "1" ? Colors.white : Colors.grey,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: Dimension.safeBlockVertical * 2,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedClass = selectedClass == "2" ? "" : "2";
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: Dimension.safeBlockVertical * 1.5,
                                    bottom: Dimension.safeBlockVertical * 1.5,
                                    left: Dimension.safeBlockVertical * 2,
                                    right: Dimension.safeBlockVertical * 2),
                                decoration: BoxDecoration(
                                    color: selectedClass == "2" ? ColorBase.blue : Colors.transparent,
                                    borderRadius: BorderRadius.all(Radius.circular(Dimension.safeBlockVertical * 3)),
                                    border: Border.all(
                                        color: selectedClass == "2" ? ColorBase.blue : Colors.grey,
                                        width: 1.5
                                    )
                                ),
                                child: Text(
                                  "Kelas 2",
                                  style: TextStyle(
                                      fontSize: Dimension.safeBlockVertical * 2.25,
                                      color: selectedClass == "2" ? Colors.white : Colors.grey,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: Dimension.safeBlockVertical * 2,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedClass = selectedClass == "3" ? "" : "3";
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: Dimension.safeBlockVertical * 1.5,
                                    bottom: Dimension.safeBlockVertical * 1.5,
                                    left: Dimension.safeBlockVertical * 2,
                                    right: Dimension.safeBlockVertical * 2),
                                decoration: BoxDecoration(
                                    color: selectedClass == "3" ? ColorBase.blue : Colors.transparent,
                                    borderRadius: BorderRadius.all(Radius.circular(Dimension.safeBlockVertical * 3)),
                                    border: Border.all(
                                        color: selectedClass == "3" ? ColorBase.blue : Colors.grey,
                                        width: 1.5
                                    )
                                ),
                                child: Text(
                                  "Kelas 3",
                                  style: TextStyle(
                                      fontSize: Dimension.safeBlockVertical * 2.25,
                                      color: selectedClass == "3" ? Colors.white : Colors.grey,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: Dimension.safeBlockVertical * 2,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedClass = selectedClass == "4" ? "" : "4";
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: Dimension.safeBlockVertical * 1.5,
                                    bottom: Dimension.safeBlockVertical * 1.5,
                                    left: Dimension.safeBlockVertical * 2,
                                    right: Dimension.safeBlockVertical * 2),
                                decoration: BoxDecoration(
                                    color: selectedClass == "4" ? ColorBase.blue : Colors.transparent,
                                    borderRadius: BorderRadius.all(Radius.circular(Dimension.safeBlockVertical * 3)),
                                    border: Border.all(
                                        color: selectedClass == "4" ? ColorBase.blue : Colors.grey,
                                        width: 1.5
                                    )
                                ),
                                child: Text(
                                  "Kelas 4",
                                  style: TextStyle(
                                      fontSize: Dimension.safeBlockVertical * 2.25,
                                      color: selectedClass == "4" ? Colors.white : Colors.grey,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: Dimension.safeBlockVertical * 2,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedClass = selectedClass == "5" ? "" : "5";
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: Dimension.safeBlockVertical * 1.5,
                                    bottom: Dimension.safeBlockVertical * 1.5,
                                    left: Dimension.safeBlockVertical * 2,
                                    right: Dimension.safeBlockVertical * 2),
                                decoration: BoxDecoration(
                                    color: selectedClass == "5" ? ColorBase.blue : Colors.transparent,
                                    borderRadius: BorderRadius.all(Radius.circular(Dimension.safeBlockVertical * 3)),
                                    border: Border.all(
                                        color: selectedClass == "5" ? ColorBase.blue : Colors.grey,
                                        width: 1.5
                                    )
                                ),
                                child: Text(
                                  "Kelas 5",
                                  style: TextStyle(
                                      fontSize: Dimension.safeBlockVertical * 2.25,
                                      color: selectedClass == "5" ? Colors.white : Colors.grey,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: Dimension.safeBlockVertical * 2,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedClass = selectedClass == "6" ? "" : "6";
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: Dimension.safeBlockVertical * 1.5,
                                    bottom: Dimension.safeBlockVertical * 1.5,
                                    left: Dimension.safeBlockVertical * 2,
                                    right: Dimension.safeBlockVertical * 2),
                                decoration: BoxDecoration(
                                    color: selectedClass == "6" ? ColorBase.blue : Colors.transparent,
                                    borderRadius: BorderRadius.all(Radius.circular(Dimension.safeBlockVertical * 3)),
                                    border: Border.all(
                                        color: selectedClass == "6" ? ColorBase.blue : Colors.grey,
                                        width: 1.5
                                    )
                                ),
                                child: Text(
                                  "Kelas 6",
                                  style: TextStyle(
                                      fontSize: Dimension.safeBlockVertical * 2.25,
                                      color: selectedClass == "6" ? Colors.white : Colors.grey,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: Dimension.safeBlockVertical * 2,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedClass = selectedClass == "7" ? "" : "7";
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: Dimension.safeBlockVertical * 1.5,
                                    bottom: Dimension.safeBlockVertical * 1.5,
                                    left: Dimension.safeBlockVertical * 2,
                                    right: Dimension.safeBlockVertical * 2),
                                decoration: BoxDecoration(
                                    color: selectedClass == "7" ? ColorBase.blue : Colors.transparent,
                                    borderRadius: BorderRadius.all(Radius.circular(Dimension.safeBlockVertical * 3)),
                                    border: Border.all(
                                        color: selectedClass == "7" ? ColorBase.blue : Colors.grey,
                                        width: 1.5
                                    )
                                ),
                                child: Text(
                                  "Kelas 7",
                                  style: TextStyle(
                                      fontSize: Dimension.safeBlockVertical * 2.25,
                                      color: selectedClass == "7" ? Colors.white : Colors.grey,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: Dimension.safeBlockVertical * 2,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedClass = selectedClass == "8" ? "" : "8";
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: Dimension.safeBlockVertical * 1.5,
                                    bottom: Dimension.safeBlockVertical * 1.5,
                                    left: Dimension.safeBlockVertical * 2,
                                    right: Dimension.safeBlockVertical * 2),
                                decoration: BoxDecoration(
                                    color: selectedClass == "8" ? ColorBase.blue : Colors.transparent,
                                    borderRadius: BorderRadius.all(Radius.circular(Dimension.safeBlockVertical * 3)),
                                    border: Border.all(
                                        color: selectedClass == "8" ? ColorBase.blue : Colors.grey,
                                        width: 1.5
                                    )
                                ),
                                child: Text(
                                  "Kelas 8",
                                  style: TextStyle(
                                      fontSize: Dimension.safeBlockVertical * 2.25,
                                      color: selectedClass == "8" ? Colors.white : Colors.grey,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: Dimension.safeBlockVertical * 2,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedClass = selectedClass == "9" ? "" : "9";
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: Dimension.safeBlockVertical * 1.5,
                                    bottom: Dimension.safeBlockVertical * 1.5,
                                    left: Dimension.safeBlockVertical * 2,
                                    right: Dimension.safeBlockVertical * 2),
                                decoration: BoxDecoration(
                                    color: selectedClass == "9" ? ColorBase.blue : Colors.transparent,
                                    borderRadius: BorderRadius.all(Radius.circular(Dimension.safeBlockVertical * 3)),
                                    border: Border.all(
                                        color: selectedClass == "9" ? ColorBase.blue : Colors.grey,
                                        width: 1.5
                                    )
                                ),
                                child: Text(
                                  "Kelas 9",
                                  style: TextStyle(
                                      fontSize: Dimension.safeBlockVertical * 2.25,
                                      color: selectedClass == "9" ? Colors.white : Colors.grey,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: Dimension.safeBlockVertical * 2,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedClass = selectedClass == "10" ? "" : "10";
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: Dimension.safeBlockVertical * 1.5,
                                    bottom: Dimension.safeBlockVertical * 1.5,
                                    left: Dimension.safeBlockVertical * 2,
                                    right: Dimension.safeBlockVertical * 2),
                                decoration: BoxDecoration(
                                    color: selectedClass == "10" ? ColorBase.blue : Colors.transparent,
                                    borderRadius: BorderRadius.all(Radius.circular(Dimension.safeBlockVertical * 3)),
                                    border: Border.all(
                                        color: selectedClass == "10" ? ColorBase.blue : Colors.grey,
                                        width: 1.5
                                    )
                                ),
                                child: Text(
                                  "Kelas 10",
                                  style: TextStyle(
                                      fontSize: Dimension.safeBlockVertical * 2.25,
                                      color: selectedClass == "10" ? Colors.white : Colors.grey,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: Dimension.safeBlockVertical * 2,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedClass = selectedClass == "11" ? "" : "11";
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: Dimension.safeBlockVertical * 1.5,
                                    bottom: Dimension.safeBlockVertical * 1.5,
                                    left: Dimension.safeBlockVertical * 2,
                                    right: Dimension.safeBlockVertical * 2),
                                decoration: BoxDecoration(
                                    color: selectedClass == "11" ? ColorBase.blue : Colors.transparent,
                                    borderRadius: BorderRadius.all(Radius.circular(Dimension.safeBlockVertical * 3)),
                                    border: Border.all(
                                        color: selectedClass == "11" ? ColorBase.blue : Colors.grey,
                                        width: 1.5
                                    )
                                ),
                                child: Text(
                                  "Kelas 11",
                                  style: TextStyle(
                                      fontSize: Dimension.safeBlockVertical * 2.25,
                                      color: selectedClass == "11" ? Colors.white : Colors.grey,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: Dimension.safeBlockVertical * 2,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedClass = selectedClass == "12" ? "" : "12";
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: Dimension.safeBlockVertical * 1.5,
                                    bottom: Dimension.safeBlockVertical * 1.5,
                                    left: Dimension.safeBlockVertical * 2,
                                    right: Dimension.safeBlockVertical * 2),
                                decoration: BoxDecoration(
                                    color: selectedClass == "12" ? ColorBase.blue : Colors.transparent,
                                    borderRadius: BorderRadius.all(Radius.circular(Dimension.safeBlockVertical * 3)),
                                    border: Border.all(
                                        color: selectedClass == "12" ? ColorBase.blue : Colors.grey,
                                        width: 1.5
                                    )
                                ),
                                child: Text(
                                  "Kelas 12",
                                  style: TextStyle(
                                      fontSize: Dimension.safeBlockVertical * 2.25,
                                      color: selectedClass == "12" ? Colors.white : Colors.grey,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Dimension.safeBlockVertical * 2,
                        ),
                        Row(
                          children: [
                            Text(
                              "Jurusan",
                              style: TextStyle(
                                  fontSize: Dimension.safeBlockVertical * 2.5,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              "*",
                              style: TextStyle(
                                  fontSize: Dimension.safeBlockVertical * 2.5,
                                  color: Colors.red
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: Dimension.safeBlockVertical * 2,
                        ),
                        Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedMajor = selectedMajor == "1" ? "" : "1";
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.only(
                                      top: Dimension.safeBlockVertical * 1.5,
                                      bottom: Dimension.safeBlockVertical * 1.5,
                                      left: Dimension.safeBlockVertical * 2,
                                      right: Dimension.safeBlockVertical * 2),
                                  decoration: BoxDecoration(
                                      color: selectedMajor == "1" ? ColorBase.blue : Colors.transparent,
                                      borderRadius: BorderRadius.all(Radius.circular(Dimension.safeBlockVertical * 3)),
                                      border: Border.all(
                                          color: selectedMajor == "1" ? ColorBase.blue : Colors.grey,
                                          width: 1.5
                                      )
                                  ),
                                  child: Text(
                                    "IPA",
                                    style: TextStyle(
                                        fontSize: Dimension.safeBlockVertical * 2.25,
                                        color: selectedMajor == "1" ? Colors.white : Colors.grey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: Dimension.safeBlockVertical * 2,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedMajor = selectedMajor == "2" ? "" : "2";
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.only(
                                      top: Dimension.safeBlockVertical * 1.5,
                                      bottom: Dimension.safeBlockVertical * 1.5,
                                      left: Dimension.safeBlockVertical * 2,
                                      right: Dimension.safeBlockVertical * 2),
                                  decoration: BoxDecoration(
                                      color: selectedMajor == "2" ? ColorBase.blue : Colors.transparent,
                                      borderRadius: BorderRadius.all(Radius.circular(Dimension.safeBlockVertical * 3)),
                                      border: Border.all(
                                          color: selectedMajor == "2" ? ColorBase.blue : Colors.grey,
                                          width: 1.5
                                      )
                                  ),
                                  child: Text(
                                    "IPS",
                                    style: TextStyle(
                                        fontSize: Dimension.safeBlockVertical * 2.25,
                                        color: selectedMajor == "2" ? Colors.white : Colors.grey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ]
                        )
                      ],
                    ),
                  )
              ),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(
                      bottom: Dimension.safeBlockHorizontal * 4),
                  child: RoundedButton(
                      title: "Simpan",
                      textStyle: TextStyle(color: ColorBase.white),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      minWidth: (Dimension.screenWidth) -
                          Dimension.safeBlockHorizontal * 10,
                      borderRadius: BorderRadius.circular(20),
                      color: ColorBase.purple),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
