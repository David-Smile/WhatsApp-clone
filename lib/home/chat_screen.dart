import 'package:flutter/material.dart';
import 'package:whatsapp_clone/main.dart';
import 'package:whatsapp_clone/model/chat_model.dart';
import 'dart:math';

import '../pages/chat_page.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darker,
      body: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, i) => Column(
          children: <Widget>[
            const Divider(
              height: 10.0,
            ),
            ListTile(
              onTap: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  ChatPage(user: dummyData[i].name!, userDp: dummyData[i].image!,)),
              );},
              leading: CircleAvatar(
                foregroundColor: grey,
                backgroundColor: dark,
                backgroundImage: AssetImage(dummyData[i].image!),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    dummyData[i].name!,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
              subtitle: Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  dummyData[i].message!,
                  style: const TextStyle(color: grey, fontSize: 14.0),
                  maxLines: 1,
                ),
              ),
              trailing: Column(
                children: [
                  Text(
                    dummyData[i].time!,
                    style: TextStyle(color: dummyData[i].messagesStatus == MessagesStatus.unread ? accent:grey, fontSize: 10.0),
                  ),
                  Visibility(
                    visible: dummyData[i].messagesStatus == MessagesStatus.unread ? true:false,
                    child: Column(
                      children: [
                        const SizedBox(height: 10.0,),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100.0), color: accent ),
                          child: Center(child: Text('${Random().nextInt(10)+1}')),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: accent,
        child: const Icon( Icons.comment),
        onPressed: () {},
      ),
    );
  }
}
