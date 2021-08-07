import 'package:api/views/home/model.dart';
import 'package:dio/dio.dart';

class HomeController {

  Dio _dio = Dio();

  Future<List<HomeModel>> getData() async{
    List<HomeModel> list = [];
    final response = await _dio.get('https://www.breakingbadapi.com/api/characters');
    final data = response.data as List;
    data.forEach((element) {
      HomeModel homeModel = HomeModel.fromJson(element);
      list.add(homeModel);
    });
    return list;
  }

}