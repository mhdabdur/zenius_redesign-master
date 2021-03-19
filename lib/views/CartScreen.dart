import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zenius_redesign/constants/Colors.dart';
import 'package:zenius_redesign/constants/Environments.dart';
import 'package:zenius_redesign/utils/Dimension.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
                    color: ColorBase.purple,
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(Dimension.safeBlockVertical * 2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pilih Paket",
                                style: TextStyle(
                                    fontSize: Dimension.safeBlockVertical * 3,
                                    fontWeight: FontWeight.w500,
                                    color: ColorBase.white
                                ),
                              ),
                              SizedBox(
                                height: Dimension.safeBlockVertical * 2.5,
                              ),
                              Text(
                                "Paket Premium Zenius",
                                style: TextStyle(
                                    fontSize: Dimension.safeBlockVertical * 1.75,
                                    color: Colors.white
                                ),
                              ),
                              SizedBox(
                                height: Dimension.safeBlockVertical * 1.5,
                              ),
                              Text(
                                "Fitur kerennya penuhi kebutuhan belajarmu",
                                style: TextStyle(
                                    fontSize: Dimension.safeBlockVertical * 1.75,
                                    color: Colors.white
                                ),
                              ),
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
                SizedBox(
                  height: Dimension.safeBlockVertical * 2,
                ),
                Container(
                    child: Image.asset("${Environments.imageAssets}menu_pembelian.png"))
              ],
            ),
          ),
        )
    );
  }
}
