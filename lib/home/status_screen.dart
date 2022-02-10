import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_clone/main.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darker,
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            backgroundColor: grey,
            child: const Icon( Icons.create),
            onPressed: () {},
            mini: true,
          ),
          const Padding(padding: EdgeInsets.only(top:10.0)),
          FloatingActionButton(
            backgroundColor: accent,
            child: const Icon( Icons.camera_alt),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
