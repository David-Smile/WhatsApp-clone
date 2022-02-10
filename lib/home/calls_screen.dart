import 'package:flutter/material.dart';
import 'package:whatsapp_clone/main.dart';
import 'package:whatsapp_clone/model/calls_model.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darker,
      body: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, i) {
          CallModel call = dummyData[i];
          return Column(
            children: <Widget>[
              const Divider(
                height: 10.0,
              ),
              ListTile(
                leading: CircleAvatar(
                  foregroundColor: grey,
                  backgroundColor: dark,
                  backgroundImage: AssetImage(call.image!),
                ),
                title: Text(
                  call.name!,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                subtitle: Row(
                  children: <Widget>[
                    Icon(
                      call.callStatus == CallStatus.accepted
                          ? Icons.call_made_outlined
                          : Icons.call_end_outlined,
                      color: call.callStatus == CallStatus.accepted
                          ? Colors.green
                          : Colors.red,
                      size: 14,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                    ),
                    Text(
                      dummyData[i].datetime!,
                      style: const TextStyle(color: grey, fontSize: 12.0),
                    ),
                  ],
                ),
                trailing: Icon(
                  call.callType == CallType.audio ? Icons.call : Icons.video_call,
                  color: accent,
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: accent,
        child: const Icon( Icons.add_call),
        onPressed: () {},
      ),
    );
  }
}
