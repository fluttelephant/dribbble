import 'package:firstappflutter/ultrafit/activities/auth/AuthActivity.dart';
import 'package:firstappflutter/ultrafit/const.dart';
import 'package:flutter/material.dart';

class UltraFitApp extends StatefulWidget {
  @override
  _UltraFitApp createState() => _UltraFitApp();
}

class _UltraFitApp extends State<UltraFitApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ULTRAFIT',
      theme: _buildThemeData(),
      //debugShowMaterialGrid: true,
      debugShowCheckedModeBanner: false,
      home: AuthActivity(),
    );
  }

  ThemeData _buildThemeData() {
    return ThemeData(
      //brightness: appTheme.theme.brightness,
      primarySwatch: color1,
      //primarySwatch: color1,
      backgroundColor: whiteLilac,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      fontFamily: "Manrope",
      textTheme: TextTheme(
        headline6: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
        headline5: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        headline4: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
