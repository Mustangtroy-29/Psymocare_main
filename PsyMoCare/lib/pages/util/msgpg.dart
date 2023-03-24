import 'package:flutter/material.dart';
import 'package:psymokare/pages/util/index.dart';
import 'package:psymokare/pages/util/msgpbdy.dart';
import 'package:psymokare/pages/util/vc.dart';
class msgpg extends StatefulWidget {
  const msgpg({Key? key}) : super(key: key);

  @override
  State<msgpg> createState() => _msgpgState();
}

class _msgpgState extends State<msgpg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Color(0xFF29558B),
        elevation: 0.0,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              BackButton(),
              CircleAvatar(
                backgroundImage: AssetImage('lib/icons/docts/ketan.jpg'),
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dr. Ketan Parmar",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Active 3m ago",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              )
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.local_phone),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.videocam),
              onPressed: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => vc(),
                ),
                 );
              },
            ),
            SizedBox(width: 6),
          ]
      ),
      body: msgpbdy(),
    );
  }
}
