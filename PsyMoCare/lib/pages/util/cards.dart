import 'dart:async';

import 'package:flutter/material.dart';

class card1 extends StatelessWidget{
  const card1({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
      width: 300,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF29558B),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children:
           [
            Text(
              'REMINDER',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox( height: 30),
            Text(
              'Your appointment is due this Wednesday',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),

            SizedBox( height: 30),

          ]

      ),
    ),
    );
  }
}


class card3 extends StatelessWidget{
  const card3({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xFF588B29),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'REMINDER',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox( height: 30),
              Text(
                'Your appointment is due this Wednesday',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),

              SizedBox( height: 30),

            ]

        ),
      ),
    );
  }
}

class card2 extends StatelessWidget{
  const card2({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xFF79298B),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'REMINDER',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox( height: 30),
              Text(
                'Your appointment is due this Wednesday',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),

              SizedBox( height: 30),

            ]

        ),
      ),
    );
  }
}