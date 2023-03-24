import 'package:flutter/material.dart';
import 'package:psymokare/pages/util/srchfilt.dart';

class srch extends StatefulWidget {
  const srch({Key? key}) : super(key: key);

  @override
  State<srch> createState() => _srchState();
}

class _srchState extends State<srch> {

  static List<DocSrc>doc_list=[
    DocSrc("Dr Nazneen Ladak", 19, 4.5, "English/Malayalam",
        "https://images.app.goo.gl/b6zXe2m9tfEx8jz19"),
    DocSrc("Dr. Ketan Parmar", 19, 4.8, "English/Marathi", "lib/icons/docts/ketan.jpg"),
    DocSrc("Dr. Pranav Shetty", 17, 4.4, "English/Malayalam",
        "https://images.app.goo.gl/BGaq4Yeo4zWHA1go7"),
    DocSrc("Dr.Adnan Kamdar", 15, 4.4, "English/Marathi", "https://images.app.goo.gl/BDnMGE9Cbhtz4yZ48"),
    DocSrc("Dr.Jai Dhillon", 14, 4.2, "English/Punjabi", "https://images.app.goo.gl/Gc6XEWtJ7k1fbhBs5"),
    DocSrc("Dr.Sudarshan Jayaraman", 13, 4.0, "English/Tamil", "https://images.app.goo.gl/LN9pwHrjcyjTCG1J7"),
    DocSrc("Dr.Ravindra Bajwa", 13, 4.3, "English/Punjabi", "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.felixhospital.com%2Fsites%2Fdefault%2Ffiles%2F2022-11%2Fdr-piyush-kumar.jpg&imgrefurl=https%3A%2F%2Fwww.felixhospital.com%2Ffind-a-doctor&tbnid=4gnn7Ngi7pgyXM&vet=1&docid=P8jJEZP1XW85QM&w=1500&h=1500&itg=1&hl=en-GB&source=sh%2Fx%2Fim"),
    DocSrc("Dr.Jayendra Parsa", 12, 4.7, "English/Gujrati", "https://images.app.goo.gl/AsubDKtjzRZypBfr6"),
    DocSrc("Dr.Jagan Apte", 11, 4.0, "English/Marathi", "https://images.app.goo.gl/coywrdKTy5RLHycF7"),
    DocSrc("Dr.Anika Ruchandani ", 10, 4.6, "English/Sindhi", "https://images.app.goo.gl/2Wt3U9oFStc9tAkXA"),
    DocSrc("Dr.Aradhana Tandon", 7, 3.9, "English/Punjabi", "https://images.app.goo.gl/yfNX3DhFDgtg4NkS7"),
    DocSrc("Dr.Shivani Dalal", 5, 3.9, "English/Hindi", "https://images.app.goo.gl/JWgAodSNiVbDgzSW7"),
    DocSrc("Dr.Aishwarya Barad", 5, 3.8, "English/Marathi", "https://images.app.goo.gl/uE25EmeFsKbFUzvh6"),
    DocSrc("Dr.Ritika Mehrotra", 5, 3.9, "English/Hindi", "https://images.app.goo.gl/TyupHumMN92TPzdr9")

    
  ];

  List<DocSrc> display_list=List.from(doc_list);

  void updLst(String value){
    //search function
    setState(() {
      display_list=doc_list.where((element) => element.name!.toLowerCase().contains(value.toLowerCase())).toList();
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Color(0xFF29558B),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("The best doctors at your service",
            style: TextStyle(
              color: Color(0xFF29558B),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(
              height: 57,
            ),
            TextField(
              onChanged: (value)=>updLst(value),
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFF29558B),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.white,
              ),

            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
                  itemCount: display_list.length,
                    itemBuilder:
                    (context,index)=>ListTile(
                      contentPadding: EdgeInsets.all(8.0),
                      title: Text(
                        display_list[index].name!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Text('${display_list[index].rating!}', style: TextStyle(color: Colors.deepOrange),),
                      /*leading: Image.asset(display_list[index].img!),*/
                      subtitle: Text('${display_list[index].exp!}'),
                    )),
            )

          ],
        ),
      )
    );
  }
}
