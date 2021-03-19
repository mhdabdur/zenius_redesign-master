import 'package:flutter/material.dart';
import 'package:zenius_redesign/configs/Routes.dart';
import 'package:zenius_redesign/constants/Dictionary.dart';
import 'package:zenius_redesign/constants/FontsFamily.dart';
import 'package:zenius_redesign/constants/Navigation.dart';
import 'package:zenius_redesign/views/IndexScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '${Dictionary.appName}',
      theme: ThemeData(
          primaryColor: Colors.blue,
          primaryColorBrightness: Brightness.dark,
//          fontFamily: FontsFamily.circularStd,
//          canvasColor: Colors.transparent,
          bottomSheetTheme: BottomSheetThemeData(
              backgroundColor: Colors.black.withOpacity(0)),
          scaffoldBackgroundColor: Colors.grey),
      debugShowCheckedModeBanner: false,
      home: IndexScreen(),
      onGenerateRoute: generateRoutes,
      navigatorKey: NavigationConstant.navKey,
    );
  }
}
