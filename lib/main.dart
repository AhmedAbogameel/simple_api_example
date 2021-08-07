import 'package:api/views/login/view.dart';
import 'package:api/views/splash/view.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginView(),
    );
  }
}
