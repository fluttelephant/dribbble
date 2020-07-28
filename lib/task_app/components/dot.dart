import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  final Color color;

  Dot({
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: color ?? Color(0xFFFD93A2)
          //FD93A2
          ),
    );
  }
}
