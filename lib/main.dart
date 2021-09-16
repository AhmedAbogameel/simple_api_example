import 'package:api/core/router/router.dart';
import 'package:api/core/sharedHelper/shared_helper.dart';
import 'package:api/views/search/view.dart';
import 'package:api/views/terms/view.dart';
import 'package:flutter/material.dart';

main(){
  WidgetsFlutterBinding.ensureInitialized();
  SharedHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoute,
      home: SearchView(),
    );
  }
}