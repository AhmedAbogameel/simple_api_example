import 'package:api/views/counter/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterController extends Cubit<CounterStates>{
  CounterController() : super(CounterInit());

  static CounterController of(context) => BlocProvider.of(context);

  int counter = 0;

  String getData() {
    print('Data ' * 88);
    return 'data';
  }

  void add(){
    counter++;
    emit(CounterRebuild());
  }

}