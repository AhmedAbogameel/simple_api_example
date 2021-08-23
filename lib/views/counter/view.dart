import 'package:api/views/counter/controller.dart';
import 'package:api/views/counter/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterController(),
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterController, CounterStates>(
                builder: (context, state) => Text(
                      CounterController.of(context).counter.toString(),
                      style: TextStyle(fontSize: 30),
                    ),
            ),
            SizedBox(height: 20),
            _Text(),
          ],
        ),
      ),
    );
  }
}


class _Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {
      CounterController.of(context).add();
    }, child: Text('Add'));
  }
}
