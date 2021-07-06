import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:naboulisy/screen/chatscreen.dart';
import './screen/welcome.dart';
import './screen/homescreen.dart';
import './screen/chatscreen.dart';

void main() {
  runApp(Napulsi());
}

class Napulsi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'موسوعة النابوسلي   ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(),
      routes: {
        Homescreen.routename: (context) => Homescreen(),
        ChatScreen.routname: (context) => ChatScreen(),
      },
    );
  }
}
