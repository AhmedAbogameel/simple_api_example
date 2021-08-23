import 'package:api/views/counter/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterController extends Cubit<CounterStates>{
  CounterController() : super(CounterInit());

  static CounterController of(context) => BlocProvider.of(context);

  int counter = 0;

  void add(){
    counter++;
    emit(CounterRebuild());
  }

}