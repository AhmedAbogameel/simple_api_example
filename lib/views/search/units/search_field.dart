import 'package:api/views/search/cubit.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = SearchCubit.of(context);
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: cubit.searchController,
          ),
        ),
        IconButton(
            onPressed: cubit.search,
            icon: Icon(Icons.search),
        ),
      ],
    );
  }
}
