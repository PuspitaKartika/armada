import 'dart:convert';

import 'package:armada/constans/constans.dart';
import 'package:armada/model/login_model.dart';
import 'package:armada/services/shared_preference_service.dart';
import 'package:dio/dio.dart';

class AuthRepo {
  Dio dio = Dio(BaseOptions(baseUrl: baseUrl));

  Future<LoginModel> login(
      {required String name, required String password}) async {
    try {
      final data = {
        "identifier": name,
        "password": password,
      };

      final response =
          await Dio().post("http://10.0.2.2:1337/api/auth/local", data: data);

      print("Response from server: ${response.data}");

      Map<String, dynamic> responseData = json.decode(response.toString());
      final loginModel = LoginModel.fromJson(responseData);

      await SharedPreferenceService.saveUser(loginModel);
      return loginModel;
    } on DioException catch (e) {
      if (e.response != null) {
        final response = jsonDecode(e.response.toString());
        print("Error response from server: $response");
        throw response["message"];
      } else {
        print("Network error or no response from server $e");
        throw "No response from the server";
      }
    }
  }
}
