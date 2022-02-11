import 'package:flutter/material.dart';
import 'package:whatsapp_clone/main.dart';
import 'package:bubble/bubble.dart';
import 'package:whatsapp_clone/model/conversation_model.dart';

class ChatPage extends StatefulWidget {
   final String? user;
   final String? userDp;

  const ChatPage({Key? key,
    this.user,
    this.userDp}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darker,
      appBar: AppBar(
        backgroundColor: dark,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back)),
        title: Row(
          children: <Widget>[
            CircleAvatar(
              foregroundColor: grey,
              backgroundColor: dark,
              backgroundImage: AssetImage('${widget.userDp}'),
              radius: 15.0,
            ),
            const SizedBox(width: 10.0,),
            Flexible(child: Text('${widget.user}', style: TextStyle(fontSize: 16.0),)),

          ],
        ),
        actions: [
          IconButton(onPressed:(){},
              icon: const Icon(Icons.videocam_rounded),),

          IconButton(onPressed:(){},
            icon: const Icon(Icons.call),),

          IconButton(onPressed:(){},
            icon: const Icon(Icons.more_vert),),
        ],
      ),
      body: ListView.builder(itemCount: dummyData.length,
    itemBuilder: (context, i) {
    ConversationModel message = dummyData[i];
    return Column(
      children: [],
    );
      }
      ),
    );
  }
}
