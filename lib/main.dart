import 'package:firstappflutter/lekes/App.dart';
import 'package:firstappflutter/task_app/task_app.dart';
import 'package:firstappflutter/tour_agency_app/TourAgencyApp.dart';
import 'package:flutter/material.dart';

import 'task_app/task_app.dart';
import 'tour_agency_app/TourAgencyApp.dart';
import 'ultrafit/App.dart';

Future<void> main() async {
  runApp(HomeActivity());
}

class HomeActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<DataApp> apps = [
    DataApp(title: "Tour Agency App", page: TourAgencyApp()),
    DataApp(title: "Task App", page: TaskApp()),
    DataApp(title: "UltraFit", page: UltraFitApp()),
    DataApp(title: "LÈKÈ APP", page: LekesApp()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Dribbble UI'),
      ),
      body: ListView.builder(
        itemCount: apps.length,
        itemBuilder: (context, index) {
          var app = apps[index];
          return InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => app.page),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                app.title,
                style: TextStyle(fontSize: 20),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DataApp {
  final String title;
  final Widget page;

  DataApp({this.title, this.page});
}
