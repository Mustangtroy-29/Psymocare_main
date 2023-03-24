import 'package:flutter/material.dart';
import 'package:psymokare/pages/util/tinderquote.dart';
import 'package:swipable_stack/swipable_stack.dart';
class quote extends StatefulWidget {
  quote({Key? key}) : super(key: key);



  @override
  State<quote> createState() => _quoteState();
}

class _quoteState extends State<quote> {

  int index=0;
  List tabs=[
    Color(0xFF29558B), "If you want the rainbow, you have to put up with the rain.",
    Color(0xFF29558B), "If you want the rainbow, you have to put up with the rain.",
    Color(0xFF29558B), "Those who say it can’t be done are usually interrupted by others doing it.",
    Color(0xFF29558B), "Do your little bit of good where you are; it is those little bits of good put together that overwhelm the world.",


  ];

  final controller= SwipableStackController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xFF29558B),
        toolbarHeight: 50,
        title: const Text("Quotes"),
      ),
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
          height: 300,
          width: 200,
         child: Stack(
           children: [
             SwipableStack(
               controller: controller,
               itemCount: tabs.length,
                 builder:(context, index)
             {
               return Tindc(
                   color:tabs[0], text:tabs[3],
               );
             },)
           ],
         ),
        ),
      ),
    );
  }
}
