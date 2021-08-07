import 'dart:async';

import 'package:api/views/home/view.dart';
import 'package:api/views/login/view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState(){
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context,
          MaterialPageRoute(
            builder: (context) => LoginView(),
          )
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.personal_video_sharp,
          size: 50,
          color: Colors.blue,
        ),
      ),
    );
  }
}
