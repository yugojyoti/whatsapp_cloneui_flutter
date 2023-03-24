import 'package:flutter/material.dart';

import 'message_page.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({super.key});

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075e54),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("images/download.jpeg"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.0),
              child: Text("Rahul"),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                print("Video Call button Clicked");
              },
              icon: Icon(Icons.video_call)),
          IconButton(
              onPressed: () {
                print(" Call button Clicked");
              },
              icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
      ),
      body: Column(
        children: [
          Expanded(child: MessagePage()),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Flexible(
                    child: TextFormField(
                  minLines: 1,
                  maxLines: 5,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.grey, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.grey, width: 0),
                      ),
                      hintText: "Type a Message"),
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
