import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movie_app_route/api_model/RegisterResponse.dart';

class ApiManager
{

  static Future<RegisterResponse> createAccount(String name , String email , String password , String phone , int avatarId) async{
    Uri url = Uri.https("yts.mx/api", "/auth/register",
        {"apiKey": "f0dec0e2f402b47555765ae86d0debbb","name": name, "email": email , "password": password , "phone": phone, "avatarId": avatarId});
    http.Response response = await http.get(url);
    var json = jsonDecode(response.body);
    RegisterResponse registerResponse = RegisterResponse.fromJson(json);
    return registerResponse;
  }

}