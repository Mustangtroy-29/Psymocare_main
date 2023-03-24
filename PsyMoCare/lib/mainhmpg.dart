import 'package:flutter/material.dart';
import 'package:psymokare/pages/account.dart';
import 'package:psymokare/pages/home.dart';
import 'package:psymokare/pages/message.dart';
import 'package:psymokare/pages/settings.dart';
import 'package:shifting_tabbar/shifting_tabbar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class mainhmpg extends StatefulWidget {
  const mainhmpg({key});


  @override
  State<mainhmpg> createState() => _mainhmpgState();
}

class _mainhmpgState extends State<mainhmpg> {
  @override
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  final iconList= <IconData>[
    Icons.home,
    Icons.message,
    Icons.person,
    Icons.settings,
  ];
  final List<Widget> _pgs = [

    Userhome(),
    Usermsg(),
    Useracc(),
    Userset(),

];

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(

        backgroundColor: Color(0xFF29558B),
        appBar: AppBar(
          toolbarHeight: 0,
          foregroundColor: Color(0xFF29558B),
          backgroundColor: Color(0xFF29558B),
          centerTitle: true,
          title: Text('P S Y M O C A R E', textAlign:TextAlign.center,),

        ),
          body: Column(
            children: [
          TabBar(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 1),

            labelColor: Color(0xFF29558B),
            unselectedLabelColor: Color(0x4F29558B),
            indicatorColor: Colors.grey[300],
            tabs:
          [
          Tab(
            icon: Icon(Icons.home, color: Colors.grey[300],)
          ),
            Tab(
                icon: Icon(Icons.message, color: Colors.grey[300],)
            ),
            Tab(
                icon: Icon(Icons.person, color: Colors.grey[300],)
            ),
            Tab(
                icon: Icon(Icons.settings, color: Colors.grey[300],)
            )

    ],
    ),
              Expanded(
                child: TabBarView(children: [
                  Userhome(),
                  Usermsg(),
                  Useracc(),
                  Userset(),
                ] ),
              )
    ],
    )


        ),
    );


  }
}
