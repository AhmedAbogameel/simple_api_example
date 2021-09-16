import 'package:api/views/search/cubit.dart';
import 'package:api/views/search/states.dart';
import 'package:api/widgets/loading_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = SearchCubit.of(context);
    return BlocBuilder(
      bloc: cubit,
      builder: (context, state) => state is SearchLoading
          ? LoadingIndicator()
          :
      cubit.result.isEmpty ? Center(
        child: Text('No Result!', style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
      ) : Expanded(
              child: ListView.builder(
                itemCount: cubit.result.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(cubit.result[index]),
                ),
              ),
            ),
    );
  }
}
