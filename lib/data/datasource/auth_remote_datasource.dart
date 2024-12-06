import 'package:ecommerce_skl_project/data/model/response/auth_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class AuthRemoteDatasource {
  Future<Either<String, AuthResponseModel>> login(String email,
      String password) async {
    final response = await http.post(
      Uri.parse('http://192.168.90.143:8000/api/login'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password
      }),
    );

    if (response.statusCode == 200) {
      return Right(AuthResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }
}