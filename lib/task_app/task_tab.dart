import 'package:flutter/material.dart';

class TaskTab extends StatelessWidget {

  final Color backgroundColor;
  final String text;
  final Color textColor;

  TaskTab({
    this.backgroundColor,
    this.text,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15.0),
      padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 20.0),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.deepPurple,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        text,
        style: TextStyle(color: textColor ?? Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
