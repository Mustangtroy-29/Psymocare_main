import 'package:flutter/material.dart';

class MessageText extends StatelessWidget {
  MessageText(this.sender,this.text,this.currentuser);
  final String sender;
  final String text;
  final String currentuser;
  @override
  Widget build(BuildContext context) {
    if(sender==currentuser)
    {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(sender),
            Material
              (
              elevation: 15.0,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
              color: Colors.lightBlue,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20.0),
                child: Text(text,style: TextStyle(color: Colors.black,fontSize: 15.0),),
              ),

            ),
          ],
        ),
      );
    }else
    {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(sender),
            Material
              (
              elevation: 15.0,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20.0),
                child: Text(text,style: TextStyle(color: Colors.black,fontSize: 15.0),),
              ),

            ),
          ],
        ),
      );


    }



  }
}