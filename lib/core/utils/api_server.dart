import 'package:dio/dio.dart';

class ApiServer {
 final  String baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio ;

  ApiServer({required this.dio});

  Future<Map<String,dynamic>> get({required String endPoint}) async {
    Response response = await dio.get('$baseUrl$endPoint');

    return response.data;  // map 
  }
}
