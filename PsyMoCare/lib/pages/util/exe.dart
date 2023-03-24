import 'package:flutter/material.dart';
class exe extends StatefulWidget {
  const exe({Key? key}) : super(key: key);

  @override
  State<exe> createState() => _exeState();
}

class _exeState extends State<exe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xFF29558B),
        toolbarHeight: 50,
      ),
    );
  }
}
