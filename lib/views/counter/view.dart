import 'package:api/views/counter/controller.dart';
import 'package:api/views/counter/states.dart';
import 'package:api/views/test/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(onPressed: () {
          // CounterController.of(context).add();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => TestView(),
            ),
          );
        }, child: Text('Navigate!')),
      ),
    );
  }
}


// class _Text extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final controller = CounterController.of(context);
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(controller.counter.toString()),
//         SizedBox(height: 20),
//
//       ],
//     );
//   }
// }
