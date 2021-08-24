import 'package:api/views/home/components/app_bar.dart';
import 'package:api/views/home/controllers/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'components/characters_list.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeController()..getData(),
      child: Scaffold(
        appBar: homeAppBar(),
        body: HomeCharactersList(),
      ),
    );
  }
}