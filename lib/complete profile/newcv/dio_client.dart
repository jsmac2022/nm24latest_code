// import 'package:dio/dio.dart';
//
// class DioClient {
//
//   final Dio _dio = Dio();
//   final _baseUrl = 'http://134.209.229.112:8080/';
//
//   Future<User> getUser({required String id}) async {
//     // Perform GET request to the endpoint "/users/<id>"
//     Response userData = await _dio.get(_baseUrl + '/users/$id');
//
//     // Prints the raw data returned by the server
//     print('User Info: ${userData.data}');
//
//     // Parsing the raw JSON data to the User class
//     User user = User.fromJson(userData.data);
//
//     return user;
//   }
//
// }