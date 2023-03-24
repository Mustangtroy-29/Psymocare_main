import 'package:flutter/material.dart';

class lang extends StatelessWidget {
  const lang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Color(0xFF29558B),
        title: const Text("Dr. Parmar's Meet"),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          RadioListTile(
              title: const Text("Broadcaster"),
            value: "English",
            groupValue: 'Hindi', onChanged: (String? value) { "Hello"; },
             ),
          RadioListTile(
            title: const Text("Broadcaster"),
            value: "English",
            groupValue: 'Hindi', onChanged: (String? value) { "Hello"; },
          ),
          ElevatedButton(
            onPressed: (){},
            child: const Text("Join"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF29558B),
              minimumSize: const Size(double.infinity, 40),
            ),)
        ],
      ),

    );
  }
}
