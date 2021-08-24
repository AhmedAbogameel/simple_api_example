import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  final String image;
  final String name;
  CharacterCard({this.image, this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Image.network(image),
            Text(name),
          ],
        );
  }
}
