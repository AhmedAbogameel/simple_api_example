import 'package:api/views/home/controllers/controller.dart';
import 'package:api/views/home/states/controller.dart';
import 'package:api/views/home/widgets/character_card.dart';
import 'package:api/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCharactersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = HomeController.of(context);
    return BlocBuilder(
      bloc: controller,
      builder: (context, state) => state is HomeLoading ? LoadingIndicator() : ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: controller.charactersList.length,
        itemBuilder: (context,index){
          final char = controller.charactersList[index];
          return CharacterCard(
            image: char.image,
            name: char.name,
          );
        },
      ),
    );
  }
}
