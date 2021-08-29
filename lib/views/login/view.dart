import 'package:api/views/login/components/fields.dart';
import 'package:api/views/login/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'components/confirm_button.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginController(),
      child: Scaffold(
        appBar: AppBar(),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Icon(Icons.phone,size: 100),
            LoginFields(),
            LoginConfirmButton(),
          ],
        ),
      ),
    );
  }
}