import 'package:flutter/material.dart';

class TaskTab extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final Color textColor;
  final EdgeInsets padding;
  final Widget prefixIcon;

  TaskTab({
    this.backgroundColor,
    this.text,
    this.textColor,
    this.padding,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15.0),
      padding: padding ?? EdgeInsets.symmetric(horizontal: 36.0),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.deepPurple,
        borderRadius: BorderRadius.circular(10.0),
      ),
      alignment: Alignment.center,
      child: Row(
        children: <Widget>[
          if(prefixIcon != null) Row(
            children: <Widget>[
              prefixIcon,
              SizedBox(width: 5,),
            ],
          ),
          Text(
            text,
            style: TextStyle(
                color: textColor ?? Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
