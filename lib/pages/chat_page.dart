import 'package:flutter/material.dart';

import '../models/chat_models.dart';
import 'chat_detail_page.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: chatData.length,
          itemBuilder: (context, i) => Column(
                children: [
                  Divider(
                    height: 10.0,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      backgroundImage: AssetImage(chatData[i].avatar),
                    ),
                    title: Text(
                      chatData[i].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      chatData[i].message,
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    trailing: Text(
                      chatData[i].time,
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    onTap: () {
                      print("Chat Detail Open");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChatDetailPage()));
                    },
                  )
                ],
              )),
    );
  }
}
