import 'package:flutter/material.dart';
import 'package:psymokare/mainhmpg.dart';
import 'package:psymokare/pages/util/cards.dart';
import 'package:psymokare/pages/util/heatmap.dart';
import 'package:psymokare/pages/util/tabs.dart';
import 'package:psymokare/pages/util/tiletab.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class maincard extends StatelessWidget {
  maincard({Key? key}) : super(key: key);
  @override
  final _controller=PageController();
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Color(0xFF29558B),
        title: const Text("Payments"),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[300],
      body:SafeArea(
        child: Column(children:[
          Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 20),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Color(0xFF29558B),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add, color: Colors.white,),
                  )
                ],
              )
          ),

          SizedBox(height: 0),

          /*Container(
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
          )),*/
          SizedBox(height: 120),

          /*Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(leading: Icon(Icons.currency_rupee,
                color:Color(0xFF29558B) ,size: 40,)
                ,
                title: Text('Pending Amount:'
                    'Rs.850',
                  style: TextStyle(
                      color: Color(0xFF29558B),
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),),

              ),
            ),
          ),*/

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: SlideAction(
              sliderRotate: false,
              sliderButtonIconPadding: 12,
              sliderButtonIconSize: 20,
              borderRadius: 12,
              elevation: 0,
              innerColor: Colors.green[200],
              outerColor: Color(0xFF29558B),
              sliderButtonIcon: Icon(
                  Icons.currency_rupee_sharp,
                color: Color(0xFF29558B),
              ),
              text: 'Swipe to pay',
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              onSubmit: (){

              },
            ),
          )


        ]
        ),

      ),
    );

  }

  void del() {

  }
}
