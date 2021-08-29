import 'dart:async';
import 'package:api/views/timer/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimerCubit extends Cubit<TimerStates>{
  TimerCubit() : super(TimerCount());

  static TimerCubit of (context) => BlocProvider.of(context);

  int counter = 5;
  int _baseCounter = 0;
  Timer _timer;

  void count() {
    counter = 5;
    // counter += _baseCounter;
    // _baseCounter += counter;
    emit(TimerCount());
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if(counter <= 0) {
        emit(TimerFinish());
        timer.cancel();
      } else {
        counter--;
        emit(TimerCount());
      }
    });
  }

  @override
  Future<void> close() {
    if(_timer != null)
      _timer.cancel();
    return super.close();
  }

}