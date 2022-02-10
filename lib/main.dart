import 'package:flutter/material.dart';
import 'package:whatsapp_clone/whatsapp_home.dart';

const Color primary = dark;
const Color secondary = accent;
const Color background = darker;
const Color greytext = grey;

const Color dark = Color(0xff232D36);
const Color grey = Color(0xff9DA5AC);
const Color accent = Color(0xff00B09C);
const Color darker = Color(0xff18252D);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: dark,
      ),
      home: const WhatsAppHome(),
    );
  }
}
