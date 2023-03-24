import 'package:flutter/material.dart';

class emoticon extends StatelessWidget{
  final String emote;
  const emoticon({Key? key, required this.emote}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(

            decoration: BoxDecoration(
                color: Color(0xFF29558B),
                borderRadius: BorderRadius.circular(12)
            ),
            padding: EdgeInsets.all(16),
            child: Text(emote,
            style: TextStyle(
              fontSize: 28,
            ),)
    );
  }
}