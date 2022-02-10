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
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          const Divider(
            height: 10.0,
          ),
          ListTile(
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
                const Icon(
                  Icons.call,
                  color: accent,
                )
              ],
            ),
            subtitle: Row(
              children: <Widget>[
                const Icon(
                  Icons.call_made_outlined,
                  color: Colors.green,
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
          ),
        ],
      ),
    );
  }
}
