import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';


class heatmp extends StatelessWidget {
  const heatmp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xFF29558B),
        toolbarHeight: 50,
      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(

                child: HeatMapCalendar(
                  defaultColor: Colors.grey[350],
                  flexible: false,
                  colorMode: ColorMode.opacity,
                  monthFontSize: 20,
                  weekFontSize: 12,
                  showColorTip: false,
                  borderRadius: 7,
                  size: 45,
                  weekTextColor: Color(0xFF29558B),
                  datasets: {
                    DateTime(2023, 1, 6): 3,
                    DateTime(2023, 1, 7): 7,
                    DateTime(2023, 1, 8): 5,
                    DateTime(2023, 1, 9): 9,
                    DateTime(2023, 3, 23): 6,
                    DateTime(2023, 2, 3): 10,
                    DateTime(2023, 2, 1): 2,
                    DateTime(2023, 3, 5): 5,
                    DateTime(2023, 4, 13): 8,
                  },
                  textColor: Colors.black,
                  colorsets: const {
                    1: Color.fromARGB(25, 41, 85, 139),
                    2: Color.fromARGB(50, 41, 85, 139),
                    3: Color.fromARGB(100, 41, 85, 139),
                    4: Color.fromARGB(125, 41, 85, 139),
                    5: Color.fromARGB(150, 41, 85, 139),
                    6: Color.fromARGB(175, 41, 85, 139),
                    7: Color.fromARGB(200, 41, 85, 139),
                    8: Color.fromARGB(225, 41, 85, 139),
                    9: Color.fromARGB(250, 41, 85, 139),
                    10: Color.fromARGB(255, 41, 85, 139),

                  },
                  onClick: (value) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Appointment scheduled at 7:00PM")));
                  },
                ),


              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF29558B),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                      title: Text('Your appointment is due on 5th March',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                  ),
                ),
              ),
              SizedBox(
                height: 0,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF29558B),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    title: Text('Your follow-up is due on 23rd March',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                  ),
                ),
              ),
            ],
          ),
        ),

      )



   );


  }
}