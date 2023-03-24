import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Bubble(
          alignment: Alignment.center,
          color: Color.fromRGBO(212, 234, 244, 1.0),
          child: Text('TODAY',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.topRight,
          nipWidth: 8,
          nipHeight: 24,
          nip: BubbleNip.rightTop,
          color: Color.fromRGBO(225, 255, 199, 1.0),
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.topLeft,
          nipWidth: 8,
          nipHeight: 24,
          nip: BubbleNip.leftTop,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.topRight,
          nipWidth: 30,
          nipHeight: 10,
          nip: BubbleNip.rightTop,
          color: Color.fromRGBO(225, 255, 199, 1.0),
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.topLeft,
          nipWidth: 30,
          nipHeight: 10,
          nip: BubbleNip.leftTop,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.center,
          nip: BubbleNip.no,
          color: Color.fromRGBO(212, 234, 244, 1.0),
          child: Text('TOMORROW',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
        ),
      ],
    );
  }
}
