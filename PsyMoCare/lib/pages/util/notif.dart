import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';


class notif extends StatelessWidget {
  const notif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Color(0xFF29558B),
        title: const Text("Payments"),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(children: [
          Padding(padding: const EdgeInsets.symmetric(
              horizontal: 25.0, vertical: 20),
              child: Row(
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


          SizedBox(height: 10),

          SizedBox(height: 0),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
            child: GestureDetector(
              onTap: ()=> Notificationapi.showNotification(
                title: 'Hi',
                body: 'Hello',
                payload: 'ajay.iy',
              ),
              child: Container(
                height: 75,
                decoration: BoxDecoration(
                  color: Color(0xFF29558B),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListTile(leading: Icon(Icons.currency_rupee,
                  color: Color(0xFF29558B), size: 40,)
                  ,
                  title: Text('850',
                    style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),),

                ),
              ),
            ),
          ),


        ]
        ),

      ),
    );
  }
}

class Notificationapi {
  static final _notifications=FlutterLocalNotificationsPlugin();
  static Future showNotification({
  int id=0,
    String? title,
    String? body,
    String? payload,
})
  async=>
      _notifications.show(
          id,
          title,
          body,
          await _notificationDetails(),
      payload: payload,
      );

  static Future _notificationDetails() async {
    return NotificationDetails(
      android: AndroidNotificationDetails(
        'channel id',
        'channel name',
        importance: Importance.max
      ),
    );
  }
}