import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:youqiflutter/app/model/date_list.dart';

typedef DioCallback<D> = dynamic Function(D data);

class DioUtils {
  static DioUtils? _instance;

  String url = "https://youqi.taguxdesign.com/api/";

  late Dio dio;

  static DioUtils get instance => getInstance();

  late BaseOptions options;

  DioUtils() {
    dio = Dio();
  }

  DioUtils.init() {
    options = BaseOptions(connectTimeout: 5000, maxRedirects: 10);
    options.baseUrl = url;
    options.responseType = ResponseType.plain;
    dio = Dio(options);
  }

  static DioUtils getInstance() {
    _instance ??= DioUtils.init();
    return _instance!;
  }

  getHomePageInfo(DioCallback<List<Data>?> successCallBack,
      DioCallback<DioError> failCallBack) async {
    Response? response;

    try {
      response = await dio.get("datelist");

      DateList dateList =
          DateList.fromJson(json.decode(response.data.toString()));

      successCallBack(dateList.data);
    } on DioError catch (e) {
      formatError(e);
      failCallBack(e);
    }
    return response?.data;
  }

  /*
   * error统一处理
   */
  void formatError(DioError e) {
    if (e.type == DioErrorType.connectTimeout) {
      // It occurs when url is opened timeout.
      print("连接超时");
    } else if (e.type == DioErrorType.sendTimeout) {
      // It occurs when url is sent timeout.
      print("请求超时");
    } else if (e.type == DioErrorType.receiveTimeout) {
      //It occurs when receiving timeout
      print("响应超时");
    } else if (e.type == DioErrorType.response) {
      // When the server response, but with a incorrect status, such as 404, 503...
      print("出现异常");
    } else if (e.type == DioErrorType.cancel) {
      // When the request is cancelled, dio will throw a error with this type.
      print("请求取消");
    } else {
      //DEFAULT Default error type, Some other Error. In this case, you can read the DioError.error if it is not null.
      print("未知错误");
    }
  }
}
