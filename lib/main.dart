import 'package:api/core/sharedHelper/shared_helper.dart';
import 'package:api/views/counter/controller.dart';
import 'package:api/views/counter/view.dart';
import 'package:api/views/home/view.dart';
import 'package:api/views/login/view.dart';
import 'package:api/views/splash/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

main(){
  WidgetsFlutterBinding.ensureInitialized();
  SharedHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
    );
  }
}
