import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:psymokare/mainhmpg.dart';
import 'package:psymokare/pages/util/cards.dart';
import 'package:psymokare/pages/util/heatmap.dart';
import 'package:psymokare/pages/util/tabs.dart';
import 'package:psymokare/pages/util/tiletab.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Userhome extends StatelessWidget {
  Userhome({Key? key}) : super(key: key);
  final user=FirebaseAuth.instance.currentUser!;
  @override
  final _controller=PageController();
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      body:SafeArea(
        child: Column(children:[
        Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 20),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  ''+ user.email!,
                  style: TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF29558B),
                  ),
                ),
                /*Text(
                  ' Iyer',
                  style: TextStyle(fontSize: 28,
                    color: Color(0xFF29558B),
                  ),

                )*/
              ],
            ),
            GestureDetector(
              onTap: (){
                FirebaseAuth.instance.signOut();
              },
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Color(0xFF29558B),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.power_settings_new, color: Colors.white,),
              ),
            )
          ],
        )
        ),

          SizedBox(height: 0),

          Container(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                card1(),
                card2(),
                card3(),
              ],
            ),
          ),

          SizedBox(height: 10),

          SmoothPageIndicator(controller: _controller, count: 3, effect: ExpandingDotsEffect(
            dotHeight: 10,
            dotWidth: 10,
            activeDotColor: Color(0x8B000000),
          )),
          SizedBox(height: 0),

          Expanded(

                child:

                mainTab(),



      ),


        ]
    ),

    ),
    );

  }
}


