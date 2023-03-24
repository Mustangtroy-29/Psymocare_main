import 'package:flutter/material.dart';

class msgtile extends StatefulWidget {
  final String msg;
  final String sndr;
  final bool sentByme;
  const msgtile({Key? key,
    required this.msg,
    required this.sndr,
    required this.sentByme
  }) : super(key: key);

  @override
  State<msgtile> createState() => _msgtileState();
}

class _msgtileState extends State<msgtile> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
