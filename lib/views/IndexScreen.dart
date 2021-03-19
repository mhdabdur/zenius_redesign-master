import 'dart:convert';
import 'dart:io';

import 'package:bottom_navigation_badge/bottom_navigation_badge.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zenius_redesign/constants/Colors.dart';
import 'package:zenius_redesign/constants/Dictionary.dart';
import 'package:zenius_redesign/constants/Environments.dart';
import 'package:zenius_redesign/constants/Navigation.dart';
import 'package:zenius_redesign/utils/Dimension.dart';
import 'package:zenius_redesign/views/AccountScreen.dart';
import 'package:zenius_redesign/views/CartScreen.dart';
import 'package:zenius_redesign/views/CollectionScreen.dart';
import 'package:zenius_redesign/views/HomeScreen.dart';
import 'package:zenius_redesign/views/LiveClassScreen.dart';

class IndexScreen extends StatefulWidget {

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<IndexScreen>{
  int _currentIndex = 0;

  BottomNavigationBadge badger;
  List<BottomNavigationBarItem> items;

  @override
  void initState() {

    _initializeBottomNavigationBar();

    super.initState();
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  _initializeBottomNavigationBar() {
    badger = BottomNavigationBadge(
        backgroundColor: Colors.red,
        badgeShape: BottomNavigationBadgeShape.circle,
        textColor: Colors.white,
        position: BottomNavigationBadgePosition.topRight,
        textSize: 8);

    items = [
      BottomNavigationBarItem(
          icon: _currentIndex == 0 ? Image.asset("assets/ri_home-7-fill.png") : Image.asset("assets/ri_home-7.png"),
          title: Column(
            children: <Widget>[
              SizedBox(height: 4),
              _currentIndex == 0 ? Text(Dictionary.textHome, style: TextStyle(color: ColorBase.purple)) : Text(Dictionary.textHome, style: TextStyle(color: ColorBase.darkGrey)),
            ],
          )),
      BottomNavigationBarItem(
          icon: _currentIndex == 1 ? Image.asset("assets/ri_live-fill.png") : Image.asset("assets/ri_live-line.png"),
          title: Column(
            children: <Widget>[
              SizedBox(height: 4),
              _currentIndex == 1 ? Text(Dictionary.textLiveClass, style: TextStyle(color: ColorBase.purple)) : Text(Dictionary.textLiveClass, style: TextStyle(color: ColorBase.darkGrey)),
            ],
          )),
      BottomNavigationBarItem(
          icon: _currentIndex == 2 ? Image.asset("assets/zmdi_collection-bookmark-fill.png") : Image.asset("assets/zmdi_collection-bookmark.png"),
          title: Column(
            children: <Widget>[
              SizedBox(height: 4),
              _currentIndex == 2 ? Text(Dictionary.textCollection, style: TextStyle(color: ColorBase.purple)) : Text(Dictionary.textCollection, style: TextStyle(color: ColorBase.darkGrey)),
            ],
          )),
      BottomNavigationBarItem(
          icon: _currentIndex == 3 ? Image.asset("assets/ps_shopping-cart-fill.png") : Image.asset("assets/ps_shopping-cart.png"),
          title: Column(
            children: <Widget>[
              SizedBox(height: 4),
              _currentIndex == 3 ? Text(Dictionary.textCart, style: TextStyle(color: ColorBase.purple)) : Text(Dictionary.textCart, style: TextStyle(color: ColorBase.darkGrey)),
            ],
          )),
      BottomNavigationBarItem(
          icon: _currentIndex == 4 ? Image.asset("assets/user-line-fill.png") : Image.asset("assets/user-line.png"),
          title: Column(
            children: <Widget>[
              SizedBox(height: 4),
              _currentIndex == 4 ? Text(Dictionary.textAccount, style: TextStyle(color: ColorBase.purple)) : Text(Dictionary.textAccount, style: TextStyle(color: ColorBase.darkGrey)),
            ],
          )),
    ];
  }

  @override
  Widget build(BuildContext context) {
    Dimension().init(context);
    return Scaffold(
      body: SafeArea(
        child: _buildContent(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: items),
    );
  }

  Widget _buildContent(int index) {
    switch (index) {
      case 0:
        _initializeBottomNavigationBar();
        return HomeScreen();
      case 1:
        _initializeBottomNavigationBar();
        return LiveScreenScreen();
      case 2:
        _initializeBottomNavigationBar();
        return CollectionScreen();
      case 3:
        _initializeBottomNavigationBar();
        return CartScreen();
      case 4:
        _initializeBottomNavigationBar();
        return AccountScreen();
      default:
        _initializeBottomNavigationBar();
        return HomeScreen();
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

}