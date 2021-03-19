import 'package:flutter/material.dart';
import 'package:zenius_redesign/constants/Navigation.dart';
import 'package:zenius_redesign/views/DetailClassScreen.dart';
import 'package:zenius_redesign/views/DetailSubjectScreen.dart';
import 'package:zenius_redesign/views/FilterScreen.dart';
import 'package:zenius_redesign/views/HomeScreen.dart';
import 'package:zenius_redesign/views/SearchScreen.dart';


Route generateRoutes(RouteSettings settings) {
  // getting arguments passed
  final args = settings.arguments;

  switch (settings.name) {
    case NavigationConstant.Home:
      return buildRoute(settings, HomeScreen());
    case NavigationConstant.Filter:
      return buildRoute(settings, FilterScreen());
    case NavigationConstant.Search:
      return buildRoute(settings, SearchScreen());
    case NavigationConstant.DetailClass:
      return buildRoute(
          settings,
          DetailClassScreen(
            data: args,
          ));
    case NavigationConstant.DetailSubject:
      return buildRoute(
          settings,
          DetailSubjectScreen(
            data: args,
          ));


//    //prestasi kerja
//    case NavigationConstant.SKPPrestasiKerja:
//      return buildRoute(
//          settings,
//          IndexWorkAchievementScreen(
//            data: args,
//          ));

    default:
      return null;
  }
}

MaterialPageRoute buildRoute(RouteSettings settings, Widget builder) {
  return MaterialPageRoute(
    settings: settings,
    builder: (BuildContext context) => builder,
  );
}
