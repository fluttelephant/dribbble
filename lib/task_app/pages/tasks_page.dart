import 'package:firstappflutter/task_app/components/dot.dart';
import 'package:firstappflutter/task_app/pages/create_task_page.dart';
import 'package:firstappflutter/task_app/styles/my_colors.dart';
import 'package:flutter/material.dart';

import '../components/task_tab.dart';
import '../task_app.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Expanded(
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
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
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
                        height: 50,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            TaskTab(
                              text: "My Day",
                            ),
                            TaskTab(
                              text: "Important",
                              backgroundColor: myGrey300,
                              textColor: Colors.black,
                            ),
                            TaskTab(
                              text: "Personal",
                              backgroundColor: myGrey300,
                              textColor: Colors.black,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      taskCategory(text: 'Tasks'),
                      SizedBox(
                        height: 20,
                      ),
                      taskItem(
                        title: 'Meeting with Alex',
                        time: '12:30 PM - 01:00 PM',
                      ),
                      taskItem(
                        title: 'Project Review: Crodox',
                        time: '02:30 PM - 03:45 PM',
                        description:
                            'All illustration design should be handover to Smith today for review.',
                        dotColor: Colors.deepPurple,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      taskCategory(text: 'Completed'),
                      SizedBox(
                        height: 20,
                      ),
                      taskItem(
                        title: 'Meeting with Mark',
                        time: '10:30 AM - 11:00 AM',
                        isCompleted: true,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      color: Colors.deepPurple,
                      size: 45,
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(context: context, builder: (context){
                          return CreateTaskPage();
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: pink,
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.settings,
                      color: Colors.grey,
                      size: 45,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Text taskCategory({String text}) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey.shade600,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }

  Container taskItem({
    String title,
    String time,
    String description,
    Color dotColor,
    bool isCompleted = false,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: myGrey300),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      title ?? 'Meeting with Alex',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          decoration: isCompleted
                              ? TextDecoration.lineThrough
                              : TextDecoration.none),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Dot(
                      color: dotColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
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
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                if (description != null)
                  Text(
                    description,
                    style: TextStyle(color: Colors.grey.shade700),
                  )
              ],
            ),
          ),
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: isCompleted ? Colors.deepPurple : Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey),
            ),
            child: isCompleted
                ? Icon(
                    Icons.check,
                    color: Colors.white,
                  )
                : Container(),
          )
        ],
      ),
    );
  }
}
