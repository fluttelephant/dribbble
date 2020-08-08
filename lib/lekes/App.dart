import 'package:firstappflutter/lekes/HomeLekePage.dart';
import 'package:firstappflutter/lekes/const.dart';
import 'package:flutter/material.dart';

class LekesApp extends StatefulWidget {
  @override
  _LekesApp createState() => _LekesApp();
}

class _LekesApp extends State<LekesApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LÈKÈS',
      theme: _buildThemeData(),
      //debugShowMaterialGrid: true,
      debugShowCheckedModeBanner: false,
      home: HomeLekePage(),
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
