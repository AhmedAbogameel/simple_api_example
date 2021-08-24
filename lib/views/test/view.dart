import 'package:api/views/counter/controller.dart';
import 'package:api/views/counter/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<CounterController, CounterStates>(
        builder: (context, state) =>  Center(
          child:  InkWell(
            onTap: () {},
            child: Text('ClickMe!',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
      ),
    );
  }
}
