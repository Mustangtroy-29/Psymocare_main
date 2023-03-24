import 'package:flutter/material.dart';

class Tabset extends StatelessWidget {
  final String head;

  const Tabset({Key? key, required this.head}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
        child: Padding(
        padding: const EdgeInsets.all(25.0),
    child: Column(
    children: [
    Container(
    decoration: BoxDecoration(
    color: Color(0xFF29558B),
    borderRadius: BorderRadius.circular(16),
    ),
    child: ListTile(
    title: Text(head,
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold
    ),),

    trailing: Icon(Icons.group,
    color:Colors.white ,size: 50,)
    ,
    ),
    ),
    SizedBox(
    height: 20,
    ),
      ]
    )
    )
    )
    );
  }
}