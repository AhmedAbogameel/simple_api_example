import 'package:api/views/timer/cubit.dart';
import 'package:api/views/timer/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TimerCubit()..count(),
      child: Scaffold(
        body: Center(
          child: BlocBuilder<TimerCubit, TimerStates>(
            builder: (context, state){
              final controller = TimerCubit.of(context);
              if(state is TimerFinish)
                return ElevatedButton(
                  child: Text('Resend code!'),
                  onPressed: controller.count,
                );
              return Text('00:' + controller.counter.toString().padLeft(2,'0'));
            },
          ),
        ),
      ),
    );
  }
}
