import 'dart:convert';

import 'package:adecco_task/app/constants/api_endpoints.dart';
import 'package:adecco_task/app/injector/di.dart';
import 'package:adecco_task/app/services/api_services/api_services.dart';
import 'package:adecco_task/features/login/data/repositories/i_login_repository.dart';
import 'package:http/http.dart';

class LoginRepository extends ILoginRepository {
  final apiService = locator.get<ApiService>();

  @override
  Future<bool?> login({required String email, required String password}) async {
    var url = ApiEndpoints.apiLogin;
    Response response = await post(Uri.parse(url), body: {
      'email': email,
      'password': password,
    });
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      if (data != null) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }
}
