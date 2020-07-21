import 'package:firstappflutter/tour_agency_app/TourAgencyApp.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(HomeActivity());
}

class HomeActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TourAgencyApp(),
    );
  }
}
