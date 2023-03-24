

import 'package:flutter/material.dart';
import 'package:psymokare/pages/util/msgbdy.dart';
import 'package:psymokare/pages/util/msgtile.dart';

class msgpbdy extends StatelessWidget {
   msgpbdy({Key? key}) : super(key: key);
  TextEditingController messageController= TextEditingController();

  get chats => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        children: <Widget>[
          //chatMsg(),
          Container(
            alignment: Alignment.bottomCenter,
            width:  MediaQuery.of(context).size.width,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              color: Color(0xFF29558B),
              child: Row(
                children: [
                  Expanded(child: TextFormField(
                    controller: messageController,
                    style: const TextStyle(color:  Colors.white),
                    decoration: const InputDecoration(
                      hintText: "Send a message...",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                      border: InputBorder.none
                    ),
                  )),
                  const SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: (){
                      MessageText("Ajay","hi","Test");
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: const Center(
                        child: Icon(Icons.send,
                        color: Color(0xFF29558B),),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  chatMsg(){
    /*return StreamBuilder(
      stream: chats,
      builder: (context, AsyncSnapshot snapshot){
        return snapshot.hasData
            ? ListView.builder(
          itemCount: snapshot.data.docs.length,
            itemBuilder: (context, index){
            return msgtile(msg: snapshot.data.docs[index]['message'],
                sndr: snapshot.data.docs[index]['sender'],
                sentByme: widget.userName==snapshot.data.docs[index]['sender']);

        }
        )
            :Container();
      },
    );*/

  }

  sendMsg() {

  }



}