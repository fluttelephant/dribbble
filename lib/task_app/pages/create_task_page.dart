import 'package:firstappflutter/task_app/components/task_tab.dart';
import 'package:firstappflutter/task_app/styles/my_colors.dart';
import 'package:flutter/material.dart';

import '../task_app.dart';

class CreateTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 150,
                    height: 7,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Create a task',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                label(text: 'Task title'),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 60,
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.grey, width: 0.5)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Task Title',
                        hintStyle: TextStyle(color: Colors.grey.shade400)),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                label(text: 'Task type'),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: <Widget>[
                    TaskTab(
                      text: 'Important',
                      padding: EdgeInsets.symmetric(
                        horizontal: 36.0,
                        vertical: 16.0,
                      ),
                    ),
                    TaskTab(
                      text: 'Planned',
                      backgroundColor: myGrey300,
                      textColor: Colors.black,
                      padding: EdgeInsets.symmetric(
                        horizontal: 36.0,
                        vertical: 16.0,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                label(text: 'Choose date & time'),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: <Widget>[
                    TaskTab(
                      text: 'Select a date',
                      backgroundColor: myGrey200,
                      textColor: Colors.black,
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 8.0,
                      ),
                      prefixIcon: Icon(Icons.date_range),
                    ),
                    TaskTab(
                      text: 'Select time',
                      backgroundColor: myGrey200,
                      textColor: Colors.black,
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 8.0,
                      ),
                      prefixIcon: Icon(Icons.access_time),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Get alert for this task',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(10.0)),
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'On',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 20),
                          Container(
                            width: 2,
                            height: 15,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0), color: pink),
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                  child: Text(
                    'Done',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text label({String text}) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey.shade500,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }
}
