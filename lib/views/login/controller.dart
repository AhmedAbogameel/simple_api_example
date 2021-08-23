import 'dart:convert';

import 'package:api/core/sharedHelper/shared_helper.dart';
import 'package:dio/dio.dart';

class LoginController {

  Future<String> login(String email,String password)async{
    final formData = FormData.fromMap({
      'email': email,
      'password': password
    });
    final response = await Dio().post('',data: formData);
    final data = response.data as Map;
    /// NOTE: Success
    if(data.containsKey('customer_id')){
      SharedHelper.setId('');
      return 'ok';
    }
    /// NOTE: ERROR
    else
      return data['error_warning'];
  }
  /*
  // Map x = {};
    // prefs.setString('x', jsonEncode(x));
    // Map x2 = jsonDecode(prefs.getString('x')) as Map;
    // Decode ==> From dart to json "String"
    // Encode ==> From json to dart "OBJ"
   */

}