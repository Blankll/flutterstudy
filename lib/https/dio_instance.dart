import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
class DioInstance {
  static Dio _dio =new Dio();
  static SharedPreferences _preferences;

  static Future<Dio> getInstance() async {
    _preferences = await SharedPreferences.getInstance();
    String token = _preferences.getString('token');
    _dio.options.baseUrl = 'http://192.168.0.105';
    _dio.options.headers = {'AUTHORIZATION': token};

    // 添加拦截器
    _dio.interceptors.add(setInterceptor());
    // 返回实例
    return _dio;
  }


  /**
   * 拦截器
   */
  static InterceptorsWrapper setInterceptor() {
    return InterceptorsWrapper(
      onRequest: (RequestOptions options) {

        return options;
      },
      onResponse: (Response response) {
        if (response.statusCode == 0) {
          response.statusCode = 200;
        }

        return response;
      },
      onError: (DioError err) {
        if (err.response.statusCode == 401) {
          // unauthorization
        }

        return err.response;
      }
    );
  }

}