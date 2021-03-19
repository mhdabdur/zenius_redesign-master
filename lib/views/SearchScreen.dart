import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zenius_redesign/constants/Colors.dart';
import 'package:zenius_redesign/utils/Dimension.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(
                    bottom: Dimension.safeBlockVertical * 2,
                    top: Dimension.safeBlockVertical * 2,
                    left: Dimension.safeBlockVertical * 2,
                    right: Dimension.safeBlockVertical * 2),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: Dimension.safeBlockVertical * 6,
                            padding: EdgeInsets.only(
                                left: Dimension.safeBlockVertical * 2,
                                right: Dimension.safeBlockVertical * 2),
                            child: searchField(),
                          ),
                        ),
                        flex: 5),
                    Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            alignment: Alignment.centerRight,
                            child:  Text(
                              "Batalkan",
                              style: TextStyle(
                                  fontSize: Dimension.safeBlockVertical * 1.75,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        flex: 1),
                  ],
                ),
              ),
              Divider(
                height: Dimension.safeBlockVertical * 0.1,
                color: ColorBase.dividerColor,
                thickness: Dimension.safeBlockVertical * 0.1,
              ),
              Container(
                padding: EdgeInsets.only(
                    bottom: Dimension.safeBlockVertical * 1.5,
                    top: Dimension.safeBlockVertical * 1.5,
                    left: Dimension.safeBlockVertical * 2,
                    right: Dimension.safeBlockVertical * 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Perang Dunia 2",
                      style: TextStyle(
                        fontSize: Dimension.safeBlockVertical * 2,
                      ),
                    ),
                    Icon(
                      FontAwesomeIcons.timesCircle,
                      color: Colors.grey,
                      size: Dimension.safeBlockVertical * 3,
                    )
                  ],
                ),
              ),
              Divider(
                height: Dimension.safeBlockVertical * 0.1,
                color: ColorBase.dividerColor,
                thickness: Dimension.safeBlockVertical * 0.1,
              ),
              Container(
                padding: EdgeInsets.only(
                    bottom: Dimension.safeBlockVertical * 1.5,
                    top: Dimension.safeBlockVertical * 1.5,
                    left: Dimension.safeBlockVertical * 2,
                    right: Dimension.safeBlockVertical * 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sejarah Majapahit",
                      style: TextStyle(
                        fontSize: Dimension.safeBlockVertical * 2,
                      ),
                    ),
                    Icon(
                      FontAwesomeIcons.timesCircle,
                      color: Colors.grey,
                      size: Dimension.safeBlockVertical * 3,
                    )
                  ],
                ),
              ),
              Divider(
                height: Dimension.safeBlockVertical * 0.1,
                color: ColorBase.dividerColor,
                thickness: Dimension.safeBlockVertical * 0.1,
              ),
              Container(
                padding: EdgeInsets.only(
                    bottom: Dimension.safeBlockVertical * 1.5,
                    top: Dimension.safeBlockVertical * 1.5,
                    left: Dimension.safeBlockVertical * 2,
                    right: Dimension.safeBlockVertical * 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Makro Ekonomi",
                      style: TextStyle(
                        fontSize: Dimension.safeBlockVertical * 2,
                      ),
                    ),
                    Icon(
                      FontAwesomeIcons.timesCircle,
                      color: Colors.grey,
                      size: Dimension.safeBlockVertical * 3,
                    )
                  ],
                ),
              ),
              Divider(
                height: Dimension.safeBlockVertical * 0.1,
                color: ColorBase.dividerColor,
                thickness: Dimension.safeBlockVertical * 0.1,
              ),
              Container(
                padding: EdgeInsets.only(
                    bottom: Dimension.safeBlockVertical * 1.5,
                    top: Dimension.safeBlockVertical * 1.5,
                    left: Dimension.safeBlockVertical * 2,
                    right: Dimension.safeBlockVertical * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pencarian Populer",
                      style: TextStyle(
                        fontSize: Dimension.safeBlockVertical * 2.5,
                      ),
                    ),
                    SizedBox(
                      height: Dimension.safeBlockVertical * 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding:EdgeInsets.only(
                              bottom: Dimension.safeBlockVertical * 1.5,
                              top: Dimension.safeBlockVertical * 1.5,
                              left: Dimension.safeBlockVertical * 3,
                              right: Dimension.safeBlockVertical * 3),
                          decoration: BoxDecoration(
                            color: ColorBase.purple,
                            borderRadius: BorderRadius.all(Radius.circular(Dimension.safeBlockHorizontal))
                          ),
                          child: Text(
                            "Eksponensial",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Dimension.safeBlockVertical * 2,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Dimension.safeBlockHorizontal * 2,
                        ),
                        Container(
                          padding:EdgeInsets.only(
                              bottom: Dimension.safeBlockVertical * 1.5,
                              top: Dimension.safeBlockVertical * 1.5,
                              left: Dimension.safeBlockVertical * 3,
                              right: Dimension.safeBlockVertical * 3),
                          decoration: BoxDecoration(
                              color: ColorBase.purple,
                              borderRadius: BorderRadius.all(Radius.circular(Dimension.safeBlockHorizontal))
                          ),
                          child: Text(
                            "IPA",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Dimension.safeBlockVertical * 2,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Dimension.safeBlockHorizontal * 2,
                        ),
                        Container(
                          padding:EdgeInsets.only(
                              bottom: Dimension.safeBlockVertical * 1.5,
                              top: Dimension.safeBlockVertical * 1.5,
                              left: Dimension.safeBlockVertical * 3,
                              right: Dimension.safeBlockVertical * 3),
                          decoration: BoxDecoration(
                              color: ColorBase.purple,
                              borderRadius: BorderRadius.all(Radius.circular(Dimension.safeBlockHorizontal))
                          ),
                          child: Text(
                            "PKN",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Dimension.safeBlockVertical * 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimension.safeBlockVertical * 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding:EdgeInsets.only(
                              bottom: Dimension.safeBlockVertical * 1.5,
                              top: Dimension.safeBlockVertical * 1.5,
                              left: Dimension.safeBlockVertical * 3,
                              right: Dimension.safeBlockVertical * 3),
                          decoration: BoxDecoration(
                              color: ColorBase.purple,
                              borderRadius: BorderRadius.all(Radius.circular(Dimension.safeBlockHorizontal))
                          ),
                          child: Text(
                            "Differensial",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Dimension.safeBlockVertical * 2,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Dimension.safeBlockHorizontal * 2,
                        ),
                        Container(
                          padding:EdgeInsets.only(
                              bottom: Dimension.safeBlockVertical * 1.5,
                              top: Dimension.safeBlockVertical * 1.5,
                              left: Dimension.safeBlockVertical * 3,
                              right: Dimension.safeBlockVertical * 3),
                          decoration: BoxDecoration(
                              color: ColorBase.purple,
                              borderRadius: BorderRadius.all(Radius.circular(Dimension.safeBlockHorizontal))
                          ),
                          child: Text(
                            "Bahasa Indonesia",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Dimension.safeBlockVertical * 2,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget searchField() {
    return TextField(
      maxLines: 1,
      showCursor: true,
      cursorColor: ColorBase.grey,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          filled: true,
          hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12),
          fillColor: Colors.grey[200],
          hintText: "Mau belajar apa hari ini?",
          isDense: true,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(9.0)),
          ),
          suffixIcon: Icon(Icons.search)),
    );
  }
}
