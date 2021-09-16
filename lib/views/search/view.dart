import 'package:api/views/search/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'units/result_list.dart';
import 'units/search_field.dart';

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SearchField(),
            SearchResultList(),
          ],
        ),
      ),
    );
  }
}
