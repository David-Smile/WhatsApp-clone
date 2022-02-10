import 'package:flutter/material.dart';
import 'package:whatsapp_clone/main.dart';
import 'package:whatsapp_clone/pages/calls_screen.dart';
import 'package:whatsapp_clone/pages/camera_screen.dart';
import 'package:whatsapp_clone/pages/chat_screen.dart';
import 'package:whatsapp_clone/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darker,
      appBar: AppBar(
        title: const Text(
          'WhatsApp',
          style: TextStyle(color: grey),
        ),
        elevation: 0.7,
        backgroundColor: Theme.of(context).primaryColor,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: accent,
          labelColor: accent,
          unselectedLabelColor: Colors.grey,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(text: 'CHATS'),
            Tab(text: 'STATUS'),
            Tab(text: 'CALLS'),
          ],
        ),
        actions: const <Widget>[
          Icon(
            Icons.search,
            color: grey,
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
          Icon(
            Icons.more_vert,
            color: grey,
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: accent,
        child: const Icon(Icons.comment),
        onPressed: () {},
      ),
    );
  }
}
