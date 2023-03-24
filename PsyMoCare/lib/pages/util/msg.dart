import 'package:flutter/material.dart';
import 'package:psymokare/pages/util/chat.dart';
import 'package:psymokare/pages/util/msgpg.dart';


class msgwidg extends StatelessWidget {
  const msgwidg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Expanded(child: ListView.builder(
            itemCount: chatData.length,
      itemBuilder: (context, index)=>ChatCard(chat: chatData[index],
          press: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => msgpg(),

      ),
          )
          ),
      )
          )
        ]
      )
    
    );

    
  }

}

class ChatCard extends StatelessWidget {
  const ChatCard({Key? key, required this.chat, required this.press,}) : super(key: key);

  final Chat chat;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
     onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage(chat.image),
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.symmetric( horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chat.name,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 8),
                  Opacity(
                    opacity: 0.64,
                    child: Text(
                      chat.lastMessage,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            )),
            Opacity(opacity: 0.64,
            child: Text(chat.time),)
          ],
        ),
      ),
    );
  }
}
