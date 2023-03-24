import 'package:flutter/material.dart';


class Tindc extends StatelessWidget {
  final color;
  final String text;
Tindc({required this.color, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: 200,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text(text,
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: Colors.grey[300]
          ),),
        ),
        decoration: BoxDecoration(
          color: color,

        ),

      );
  }
}
