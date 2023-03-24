import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:psymokare/loginpg.dart';
import 'package:psymokare/mainhmpg.dart';
import 'package:psymokare/pages/account.dart';
import 'package:psymokare/pages/home.dart';

class canlog extends StatelessWidget {
  const canlog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            return mainhmpg();
          }
          else{
            return  loginpg(showRegpg: () {  },);
          }
        },
      ),
    );
  }
}
