import 'package:flutter/material.dart';
import 'package:psymokare/pages/util/exe.dart';
import 'package:psymokare/pages/util/heatmap.dart';
import 'package:psymokare/pages/util/quotes.dart';
import 'package:psymokare/pages/util/tiletab.dart';
import 'package:psymokare/pages/util/helpline.dart';

class mainTab extends StatelessWidget{
  /*List tabs=[
    ["Calendar","",Color(0xFF29558B), "lib/icons/1.png"],
    ["Exercises","",Color(0xFF29558B), "lib/icons/2.png"],
    ["Quotes","",Color(0xFF29558B), "lib/icons/3.png"],
    ["Helpline","",Color(0xFF29558B), "lib/icons/4.png"],
  ];*/
int index=4;
  @override
  Widget build(BuildContext context){
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[300],
          body: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: <Widget>[
              TextButton(
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>heatmp()),);
                },
                  child: tiletab(function: "Calendar", price: "", color: Color(0xFF29558B), img: "lib/icons/1.png")),
              TextButton(
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>exe()),);
                  },
                  child: tiletab(function: "Excercises", price: "", color: Color(0xFF29558B), img: "lib/icons/2.png")),
              TextButton(
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>quote()),);
                  },
                  child: tiletab(function: "Quotes", price: "", color: Color(0xFF29558B), img: "lib/icons/3.png")),
              TextButton(
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>help()),);
                  },
                  child: tiletab(function: "Helpline", price: "", color: Color(0xFF29558B), img: "lib/icons/4.png")),

            ],
          ),
        ));

  }
}