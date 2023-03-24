import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/call_page.dart';
import 'package:whatsapp_clone/pages/status_page.dart';

import 'chat_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Tab> topTabs = <Tab>[
    Tab(
      icon: Icon(Icons.camera_alt),
    ),
    Tab(
      text: "CHATS",
    ),
    Tab(
      text: 'STATUS',
    ),
    Tab(text: 'CALLS'),
  ];
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075e54),
        title: Text("WhatsApp"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        bottom: TabBar(
          tabs: topTabs,
          controller: _tabController,
          indicatorColor: Colors.white,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text("Camera"),
          ChatPage(),
          StatusPage(),
          CallPage(),
        ],
      ),
      floatingActionButton: _getFAB(),
    );
  }

  _getFAB() {
    if (_tabController.index == 1) {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff25d366),
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      );
    } else if (_tabController.index == 2) {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff25d366),
        child: Icon(
          Icons.camera_alt,
          color: Colors.white,
        ),
      );
    } else if (_tabController.index == 3) {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff25d366),
        child: Icon(
          Icons.phone,
          color: Colors.white,
        ),
      );
    } else {
      return null;
    }
  }
}
