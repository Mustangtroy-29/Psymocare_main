import 'package:flutter/material.dart';
import 'package:psymokare/homepg.dart';
import 'package:psymokare/loginpg.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:psymokare/pages/util/canlogin.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:canlog()
    );
  }
}
