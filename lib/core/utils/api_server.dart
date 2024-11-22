import 'package:dio/dio.dart';

class ApiServer {
 final  String baseUrl = 'https://www.googleapis.com/books/v1/';
  Dio dio =  Dio();

  Future<Map<String,dynamic>> get({required String endPoint}) async {
    Response response = await dio.get('$baseUrl$endPoint');

    return response.data;  // map 
  }
}
