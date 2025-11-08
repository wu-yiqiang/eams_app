import 'package:dio/dio.dart';
import 'package:eams/router/routers.dart';
import 'package:eams/store/store.dart';
import 'package:eams/utils/EventBus.dart';
import 'dart:convert';
// import 'package:common_utils/common_utils.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
//代码中 LogUtil 来自于 common_utils 插件，EasyLoading 来自于 flutter_easyloading 插件，可以根据自己的习惯替换。

String StringifyUrlSearch(String path, Map search) {
  String newPath = path + "?";
  search.forEach((k, v) => newPath += '${k}=${v}&');
  newPath = newPath.substring(0, newPath.length - 1);
  return newPath;
}

enum DioErrorType {
  SUCCESS,
  NO_CONTENT,
  BAD_REQUEST,
  FORBIDDEN,
  UNAUTORISED,
  NOT_FOUND,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECIEVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHE_ERROR,
  NO_INTERNET_CONNECTION,
  DEFAULT,
  RESPONSE,
  RECEIVE_TIMEOUT,
}

class Request {
  static BaseOptions _options = BaseOptions(
    baseUrl: 'http://192.168.1.222:9527/',
    connectTimeout: Duration(seconds: 30),
    receiveTimeout: Duration(seconds: 10),
    headers: {
      'Accept': 'application/json, */*',
      'Content-Type': 'application/json',
      "Authorization": storeGetValue(userStoreKeys['TOKEN']!),
    },
    contentType: "application/json",
  );

  static Dio _dio = Dio(_options);

  // _request 是核心函数，所有的请求都会走这里
  static Future<T> _request<T>(
    String path, {
    String? method,
    Map? params,
    data,
  }) async {
    _dio.options.headers['Authorization'] = storeGetValue(
      userStoreKeys['TOKEN']!,
    );

    if (params != null) path = StringifyUrlSearch(path, params);
    // LogUtil.v(data, tag: '发送的数据为：');
    // (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
    //     client.badCertificateCallback = (cert, String host, int port) => true;
    //     client.findProxy = (uri) {
    //       print(uri);
    //       // 代理，这里localhost:888需要根据实际情况设置相应代理地址
    //       String proxy = 'PROXY 127.0.0.1:9527';
    //       return proxy;
    //     };
    // };
    try {
      EasyLoading.show(
        maskType: EasyLoadingMaskType.black, // 设置背景不可点
      );
      Response response = await _dio.request(
        path,
        data: data,
        options: Options(method: method),
      );
      EasyLoading.dismiss();
      if (response.statusCode == 200 || response.statusCode == 201) {
        try {
          if (response.data['code'] != 200) {
            // LogUtil.v(response.data['status'], tag: '服务器错误，状态码为：');
            EasyLoading.showError(
              '${response.data['msg']}',
              duration: Duration(seconds: 2),
              maskType: EasyLoadingMaskType.black, // 设置背景不可点
            );
            if (response.data['code'] == 1010002) {
              eventBus.emit(Events.NAVIGATE.name, routerMap['LOGIN']!);
            }
            return Future.error(response.data['msg']);
          } else {
            // LogUtil.v(response.data, tag: '响应的数据为：');
            if (response.data is Map) {
              return response.data;
            } else {
              // 这里以后需要修改 可能存在问题
              return jsonDecode(response.data.toString());
            }
          }
        } catch (e) {
          // LogUtil.v(e, tag: '解析响应数据异常');
          return Future.error('解析响应数据异常');
        }
      } else {
        //  LogUtil.v(response.statusCode, tag: 'HTTP错误，状态码为：');
        _handleHttpError(response.statusCode!);
        return Future.error('HTTP错误');
      }
    } on DioError catch (e, s) {
      // LogUtil.v(_dioError(e), tag: '请求异常');
      eventBus.emit(Events.LOADINGERROR.name, _dioError(e));
      return Future.error(_dioError(e));
    } catch (e, s) {
      // LogUtil.v(e, tag: '未知异常');
      eventBus.emit(Events.LOADINGERROR.name, 'unknownException');
      return Future.error('unknownException');
    }
  }

  // 处理业务层异常
  static String _dioError(DioError error) {
    final BusinessErrorCodes = <DioErrorType, String>{
      DioErrorType.CONNECT_TIMEOUT: 'networkTimeout',
      DioErrorType.RECEIVE_TIMEOUT: 'serviceError',
      DioErrorType.SEND_TIMEOUT: 'networkTimeout',
      DioErrorType.RESPONSE: 'serviceError',
      DioErrorType.CANCEL: 'requestCanceled',
      DioErrorType.DEFAULT: 'networkTimeout',
    };
    return BusinessErrorCodes[error.type] ?? "networkTimeout";
  }

  static Future<T> get<T>(String path, Map<String, String>? params) {
    return _request(path, method: 'get', params: params);
  }

  static Future<T> post<T>(String path, params, Map<String, String>? data) {
    return _request(path, method: 'post', params: params, data: data);
  }

  // 这里只写了 get 和 post，其他的别名大家自己手动加上去就行
  // 处理Http错误码
  static void _handleHttpError(int errorCode) {
    final HttpErrorCodes = <int, String>{
      400: 'clientRequestParameterError',
      401: 'unauthorized',
      403: 'accessDenied',
      404: 'requestNotExist',
      408: 'requestTimeout',
      500: 'serverError',
      501: 'serviceNotImplemented',
      502: 'gatewayError',
      504: 'gatewayTimeout',
      505: '',
    };
    String message = HttpErrorCodes[errorCode] ?? "请求失败";
    eventBus.emit(Events.LOADINGERROR.name, message);
  }
}
