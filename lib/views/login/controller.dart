import 'package:dio/dio.dart';

class LoginController {

  Future<String> login(String email,String password)async{
    final formData = FormData.fromMap({
      'email': email,
      'password': password
    });
    final response = await Dio().post('',data: formData);
    final data = response.data as Map;
    if(data.containsKey('customer_id'))
      return 'ok';
    else
      return data['error_warning'];
  }

}