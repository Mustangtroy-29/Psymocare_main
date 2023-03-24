import 'package:flutter/material.dart';
import 'package:psymokare/loginpg.dart';
import 'package:psymokare/regpg.dart';

class Authpg extends StatefulWidget {
  const Authpg({Key? key}) : super(key: key);

  @override
  State<Authpg> createState() => _AuthpgState();
}

class _AuthpgState extends State<Authpg> {

  bool showLoginpg= true;

  void toggleScreen(){
    setState(() {
      showLoginpg=!showLoginpg;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showLoginpg){
      return loginpg(showRegpg: toggleScreen);
    }
    else{
      return Regpg(showLoginpg: toggleScreen);
    }
  }
}
