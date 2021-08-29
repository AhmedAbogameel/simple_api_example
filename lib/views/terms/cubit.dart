import 'package:api/views/terms/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TermsCubit extends Cubit<TermsStates>{
  TermsCubit() : super(TermsInit());

  static TermsCubit of (context) => BlocProvider.of(context);

  bool isAgreed = false;

  void agree(bool value){
    if(isAgreed) return;
    isAgreed = true;
    emit(TermsInit());
  }


}