import 'package:flutter/material.dart';
import 'package:psymokare/pages/util/emoticon.dart';
import 'package:psymokare/pages/util/heatmap.dart';
import 'package:psymokare/pages/util/notif.dart';
import 'package:psymokare/pages/util/payments.dart';
import 'package:psymokare/pages/util/search.dart';
import 'package:psymokare/pages/util/langselect.dart';

class Useracc extends StatelessWidget {
  const Useracc({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
    body:
    SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi Ajay!',
                        style:TextStyle(
                          color: Color(0xFF29558B),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '2 November,2022',
                        style: TextStyle(
                          color: Color(0xFF57788D),
                        ),
                      )

                    ],
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => notif()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF29558B),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Icon(
                        Icons.notifications_active,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(
                height: 20
              ),

              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => srch()));
                  },
                child: Container(
                  width: 400,
                  height: 60,
                  decoration: BoxDecoration(
                    color:Color(0xFF29558B),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Icon(Icons.search,
                      color: Colors.white
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Search',
                      style: TextStyle(
                        color: Colors.white
                      ),)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
     
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How are you feeling today?',
                    style:TextStyle(
                      color: Color(0xFF29558B),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Color(0xFF57788D),
                  )

                ],
              ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                emoticon(
                  emote: ('😊'
                ),
                ),
                emoticon(
                  emote: ('😐'
                  ),
                ),
                emoticon(
                  emote: ('😞'
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 30,
            ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF29558B),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListTile(leading: Icon(Icons.person_add,
                  color:Colors.white ,size: 50,)
                  ,
                title: Text('Add a famliy member',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),),
                  subtitle: Text('Your family can now monitor your progress',
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                      fontStyle: FontStyle.italic
                    )
                    ,),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => maincard()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF29558B),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(leading: Icon(Icons.payment,
                    color:Colors.white ,size: 50,)
                    ,
                    title: Text('Add a payment method',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                    subtitle: Text('Easy payments with an EMI feature',
                      style:TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontStyle: FontStyle.italic
                      )
                      ,),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => lang()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF29558B),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(leading: Icon(Icons.language,
                    color:Colors.white ,size: 50,)
                    ,
                    title: Text('Select your language',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                    subtitle: Text('Recommendations will be based on your language preference',
                      style:TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontStyle: FontStyle.italic
                      )
                      ,),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF29558B),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListTile(leading: Icon(Icons.list_alt,
                  color:Colors.white ,size: 50,)
                  ,
                  title: Text('Take a test',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),),
                  subtitle: Text('Test your mental health',
                    style:TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        fontStyle: FontStyle.italic
                    )
                    ,),
                ),
              )
                  ],

                ),
        ),
           
            ),

   
    



      )

);




  }
}
