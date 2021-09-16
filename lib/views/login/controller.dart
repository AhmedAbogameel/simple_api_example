import 'package:api/core/router/router.dart';
import 'package:api/views/home/view.dart';
import 'package:api/views/login/states.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginController extends Cubit<LoginStates> {
  LoginController() : super(LoginInit());

  static LoginController of(context)=> BlocProvider.of(context);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> login()async{
    if(!formKey.currentState.validate()) return;
    emit(LoginLoading());
    final formData = FormData.fromMap({
      'email': emailController.text,
      'password': passwordController.text
    });
    try{
      final response = await Dio().post('',data: formData);
      final data = response.data as Map;
      if(data.containsKey('message'))
        ScaffoldMessenger.of(MagicRouter.currentContext).showSnackBar(
          SnackBar(content: Text('Error!'))
        );
      else
        MagicRouter.navigateAndPopAll(HomeView());
    }catch(e, s){
      print(s);
    }
    emit(LoginInit());
  }
  /*
  // Map x = {};
    // prefs.setString('x', jsonEncode(x));
    // Map x2 = jsonDecode(prefs.getString('x')) as Map;
    // Decode ==> From dart to json "String"
    // Encode ==> From json to dart "OBJ"
   */

}