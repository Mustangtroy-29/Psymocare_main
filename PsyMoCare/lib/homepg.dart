import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:psymokare/loginpg.dart';
import 'mainhmpg.dart';
import 'package:psymokare/pages/authpg.dart';


class homepg extends StatelessWidget {
  const homepg({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
          if (snapshot.hasData){
            return mainhmpg();
          }
          else{
            return Authpg();
          }
        }
        )
    );
  }
}/*Center(
          child: TextButton(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Continue'),
                ],
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => mainhmpg()));
              }),
        ));
  }
}
*/
