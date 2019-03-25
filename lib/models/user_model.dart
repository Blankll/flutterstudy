import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutterstudy/entities/user.dart';
import 'package:flutterstudy/https/dio_instance.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserModel {
  static Future<bool> login(User user) async {
    FormData formData = new FormData();
    formData.add('name', user.name);
    formData.add('password', user.password);

    Dio _dio = await DioInstance.getInstance();

    print(formData);

    Response response = await _dio.post('/user/login', data: formData);
    if (response.statusCode != 200) {
        print(json.decode(response.data));
        throw new Exception(json.decode(response.data)['message']);
    }
    print(json.decode(response.data));
    String token = json.decode(response.data)['data']['token'];
    await setToken(token);

    return true;
  }

  static Future<bool> setToken(String token) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('token', token);

    return true;
  }
}