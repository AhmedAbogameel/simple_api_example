import 'package:api/views/terms/cubit.dart';
import 'package:api/views/terms/dialog.dart';
import 'package:api/views/terms/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TermsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TermsCubit(),
      child: Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<TermsCubit, TermsStates>(
          builder: (context, state) {
            final controller = TermsCubit.of(context);
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Text('Show Terms'),
                  onTap: ()=> showTermsDialog(context),
                ),
                CheckboxListTile(
                  title: Text('Agree to our terms & conditions!'),
                  value: controller.isAgreed,
                  onChanged: controller.agree,
                ),
                ElevatedButton(
                  child: Text('SignUp'),
                  onPressed: controller.isAgreed ? (){} : null,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
