import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../screen/chatscreen.dart';

import 'dart:io';

class Homescreen extends StatefulWidget {
  static const routename = 'home';
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.chat,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(ChatScreen.routname);
                },
              ),
            ],
          ),
          body: WebView(
            initialUrl: 'https://nabulsi.com/web/',
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ),
      ),
    );
  }
}
