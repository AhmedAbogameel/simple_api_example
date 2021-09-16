import 'package:api/views/search/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchStates>{
  SearchCubit() : super(SearchInit());

  static SearchCubit of(context) => BlocProvider.of(context);

  TextEditingController searchController = TextEditingController();

  List<String> result = [];
  // Map<int, String> dummyData = {
  //   1: 'Ahmed',
  //   2: 'mohamed',
  //   3: 'Esraa',
  //   4: 'Fares',
  //   5: 'eslam',
  // };

  List<String> dummyData = [
    'Ahmed',
    'Mohammed',
    'Esraa',
    'Azza'
  ];

  Future<void> search() async {
    final value = int.tryParse(searchController.text);
    if(value == null) return;
    emit(SearchLoading());
    result.clear();
    try{
      // result.addAll(dummyData.where((element) => element.contains(value)));
      // final x = dummyData.entries.firstWhere((element) => element.key == value);
      // result.add(x.value);
      final res = dummyData[value];
      if(res != null)
        result.add(res);
    }catch(e, s){
      print(e);
      // print(s);
    }
    emit(SearchInit());
  }

  @override
  Future<void> close() {
    searchController.dispose();
    return super.close();
  }

}