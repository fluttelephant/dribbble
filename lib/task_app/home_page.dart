import 'package:firstappflutter/task_app/dot.dart';
import 'package:flutter/material.dart';

import 'task_tab.dart';

class HomePage extends StatelessWidget {
  final myGrey = Colors.grey.shade200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Hello,',
                          style: TextStyle(
                              fontSize: 18, color: Colors.grey.shade800),
                        ),
                        Text('Agnaramon Boris',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        20.0,
                      ),
                      child: Image.asset(
                        "assets/taskapp/avatar.jpeg",
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      TaskTab(text: "My Day"),
                      TaskTab(
                          text: "Important",
                          backgroundColor: myGrey,
                          textColor: Colors.black),
                      TaskTab(
                          text: "Personal",
                          backgroundColor: myGrey,
                          textColor: Colors.black),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Tasks',
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                taskItem(),
                taskItem(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Completed',
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                taskItem(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container taskItem({String description}) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey.shade200),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      'Meeting with Alex',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Dot(),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.alarm,
                      color: Colors.grey.shade800,
                    ),
                    Text(
                      '12:30PM - 1:00PM',
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                if (description != null)
                  Text(
                      'oiaenzbrmaeziaezmbrbabzmrebmbaeriomezbarbibezibmzoapreazçrzar!aezparç')
              ],
            ),
          ),
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey)),
          )
        ],
      ),
    );
  }
}
