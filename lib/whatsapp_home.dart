import 'package:flutter/material.dart';
import 'package:whatsapp_clone/main.dart';
import 'package:whatsapp_clone/home/calls_screen.dart';
import 'package:whatsapp_clone/home/camera_screen.dart';
import 'package:whatsapp_clone/home/chat_screen.dart';
import 'package:whatsapp_clone/home/status_screen.dart';

import 'model/chat_model.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int count = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);

    chatCount();
  }

  chatCount() {
    for(ChatModel chat in dummyData) {
      if(chat.messagesStatus == MessagesStatus.unread){
        count ++;
      }
    }
    setState(() {

    });
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
          tabs: <Widget>[
            const Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(child: Row(children: [
              const Text('CHAT'),
              const SizedBox(width: 2.0,),
              Container(
              width: 20.0,
              height: 20.0,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100.0), color: accent ),
                child: Center(child: Text('$count', style: TextStyle(fontSize: 10, color: Colors.white),)),
              ),
            ],
            ),
            ),
            const Tab(text: 'STATUS'),
            const Tab(text: 'CALLS'),
          ],
        ),
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: grey,), splashRadius: 20.0,),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert, color: grey,), splashRadius: 20.0,),
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
    );
  }
}
