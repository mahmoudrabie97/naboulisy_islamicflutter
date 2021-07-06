import 'dart:ui';

import 'package:flutter/material.dart';
import '../screen/homescreen.dart';

class WelcomeScreen extends StatefulWidget {
  static const routename = 'welcomescreen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 10), () {
      Navigator.of(context).pushNamed(Homescreen.routename);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'images/main_top.png',
                width: MediaQuery.of(context).size.width * .3,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                'images/main_bottom.png',
                width: MediaQuery.of(context).size.width * .5,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'موسوعه النابلسي ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                  Image.asset(
                    'images/NabulsiRounded.png',
                    width: MediaQuery.of(context).size.width * .4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
