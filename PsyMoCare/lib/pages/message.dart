import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:psymokare/pages/util/msg.dart';

class Usermsg extends StatelessWidget {
  const Usermsg({Key? key}) : super(key: key);

  Future<void> _hand() async{
    return await Future.delayed(Duration(seconds:2));
  }
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Colors.grey[300],
      body: LiquidPullToRefresh(
        onRefresh: _hand,
        color: Color(0xFF29558B),
        height: 200,
        animSpeedFactor: 2,
        child: msgwidg(),
      )

    );

  }
}
