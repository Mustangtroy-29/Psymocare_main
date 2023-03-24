import 'package:flutter/material.dart';

class Userset extends StatelessWidget {
  const Userset({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
              children: [

                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF29558B),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    title: Text('About Us',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),

                      trailing: Icon(Icons.person_add,
                        color:Colors.white ,size: 50,)
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF29558B),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                      title: Text('Security',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),

                      trailing: Icon(Icons.shield,
                        color:Colors.white ,size: 50,)
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF29558B),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                      title: Text('Terms & Condition',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),

                      trailing: Icon(Icons.library_books_sharp,
                        color:Colors.white ,size: 50,)
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF29558B),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                      title: Text('Help',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),

                      trailing: Icon(Icons.help,
                        color:Colors.white ,size: 50,)
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF29558B),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                      title: Text('Privacy',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),

                      trailing: Icon(Icons.lock,
                        color:Colors.white ,size: 50,)
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF29558B),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                      title: Text('Legal Information',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),

                      trailing: Icon(Icons.balance,
                        color:Colors.white ,size: 50,)
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF29558B),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                      title: Text('Theme',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),

                      trailing: Icon(Icons.palette_outlined,
                        color:Colors.white ,size: 50,)
                  ),
                ),
          ],
        ),

    ),
    ),
      );


  }
}
