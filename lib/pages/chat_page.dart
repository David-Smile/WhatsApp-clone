import 'dart:io';

import 'package:bubble/bubble.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/main.dart';
import 'package:whatsapp_clone/model/conversation_model.dart';

class ChatPage extends StatefulWidget {
  final String? user;
  final String? userDp;

  const ChatPage({Key? key, this.user, this.userDp}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  bool showEmoji = false;
  TextEditingController textInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darker,
      appBar: AppBar(
        backgroundColor: dark,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: Row(
          children: <Widget>[
            CircleAvatar(
              foregroundColor: grey,
              backgroundColor: dark,
              backgroundImage: AssetImage('${widget.userDp}'),
              radius: 15.0,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Flexible(
                child: Text(
              '${widget.user}',
              style: const TextStyle(fontSize: 16.0),
            )),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Flexible(
            child: ListView.builder(
                itemCount: dummyData.length,
                itemBuilder: (context, i) {
                  ConversationModel message = dummyData[i];
                  return Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Bubble(
                          margin: const BubbleEdges.only(top: 10),
                          alignment:
                              dummyData[i].messagesType == MessagesType.sender
                                  ? Alignment.topRight
                                  : Alignment.topLeft,
                          nip: dummyData[i].messagesType == MessagesType.sender
                              ? BubbleNip.rightTop
                              : BubbleNip.leftTop,
                          color:
                              dummyData[i].messagesType == MessagesType.receiver
                                  ? dark
                                  : accent,
                          child: Stack(
                            children: [
                              Padding(
                                padding: dummyData[i].messagesType ==
                                        MessagesType.sender
                                    ? const EdgeInsets.only(right: 25.0)
                                    : const EdgeInsets.only(left: 5, right: 30),
                                child: Text(
                                  dummyData[i].message!,
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Text(
                                  dummyData[i].time!,
                                  textAlign: dummyData[i].messagesType ==
                                          MessagesType.sender
                                      ? TextAlign.right
                                      : TextAlign.left,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
            child: Row(
              children: [
                Container(
                  height: 41,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: dark),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          showEmoji = !showEmoji;
                          setState(() {});
                        },
                        icon: const Icon(
                          Icons.emoji_emotions,
                          color: grey,
                        ),
                      ),
                      Flexible(
                        child: TextField(
                          controller:  textInput,
                          style: const TextStyle(color: Colors.white),
                          cursorColor: accent,
                          expands: false,
                          decoration: const InputDecoration.collapsed(
                              hintText: 'Message',
                              hintStyle: TextStyle(color: grey)),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.attach_file,
                          color: grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.camera_alt,
                          color: grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 11,
                ),
                Container(
                  height: 43,
                  width: 43,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100), color: accent),
                  child: IconButton(
                    icon: const Icon(
                      Icons.mic,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),

          Visibility(
            visible: showEmoji,
            child: SizedBox(
              height: 250,
              child: EmojiPicker(
                onEmojiSelected: (Category category, Emoji emoji) {
                  textInput.text += emoji.emoji;
                },
                config: Config(
                    columns: 7,
                    emojiSizeMax: 25 * (Platform.isIOS ? 1.30 : 1.0), // Issue: https://github.com/flutter/flutter/issues/28894
                    verticalSpacing: 0,
                    horizontalSpacing: 0,
                    initCategory: Category.RECENT,
                    bgColor: dark,
                    indicatorColor: Colors.white,
                    iconColor: Colors.grey,
                    iconColorSelected: Colors.white,
                    progressIndicatorColor: Colors.blue,
                    backspaceColor: Colors.blue,
                    skinToneDialogBgColor: Colors.white,
                    skinToneIndicatorColor: Colors.grey,
                    enableSkinTones: true,
                    showRecentsTab: true,
                    recentsLimit: 28,
                    noRecentsText: "No Recents",
                    noRecentsStyle:
                    const TextStyle(fontSize: 20, color: Colors.black26),
                    tabIndicatorAnimDuration: kTabScrollDuration,
                    categoryIcons: const CategoryIcons(),
                    buttonMode: ButtonMode.MATERIAL
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
