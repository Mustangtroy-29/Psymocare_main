import 'package:flutter/material.dart';

class tiletab extends StatelessWidget{
  final String function;
  final String price;
  final color;
  final String img;

  const tiletab(
  {
   super.key,
   required this.function,
  required this.price,
  required this.color,
  required this.img,
});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12)
        ),

        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(price),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 0.0),
              child: Image.asset(img)
            ),
            Text(function,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
              color: Colors.grey[300]
            ),)
          ],
        ),
      ),
    );
  }
}