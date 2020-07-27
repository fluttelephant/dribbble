import 'package:firstappflutter/ultrafit/activities/home/HomeFragment.dart';
import 'package:firstappflutter/ultrafit/activities/home/WeightLossMealsFragment.dart';
import 'package:firstappflutter/ultrafit/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          HomeFragment(),
          WeightLossMealsFragment(),
          Container(
            color: color3,
          ),
          Container(
            color: color2,
          ),
          Container(
            color: color1,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.home,
              color: Colors.grey,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person,
              color: Colors.grey,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            backgroundColor: color1,
            icon: Icon(
              CupertinoIcons.add,
              color: Colors.grey,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.news,
              color: Colors.grey,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.bell,
              color: Colors.grey,
            ),
            title: Text(""),
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
