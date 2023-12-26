import 'package:dio/dio.dart';
import 'package:star_movie/share/remote_api_client/interceptors/interceptors.dart';

import '../../constants/constants.dart';
import '../../exceptions/exception_mapper/exception_mapper.dart';

enum RequestMethod { get, post, put, patch, delete }

class DioClient {
  final String _baseUrl;
  final Dio _dio;

  DioClient({
    String? baseUrl,
    List<BaseInterceptor>? cusInterceptors,
    int? connectTimeout,
    int? receiveTimeout,
    int? sendTimeout,
  })  : _baseUrl = baseUrl ?? RemoteConstant.baseUrl,
        _dio = Dio(
          BaseOptions(
            baseUrl: baseUrl ?? RemoteConstant.baseUrl,
            connectTimeout: Duration(milliseconds: connectTimeout ?? RemoteConstant.connectTimeout),
            receiveTimeout: Duration(microseconds: receiveTimeout ?? RemoteConstant.receiveTimeout),
            sendTimeout: Duration(milliseconds: sendTimeout ?? RemoteConstant.sendTimeout),
          ),
        )
          ..interceptors.addAll([...?cusInterceptors].sortPriority())
          ..interceptors.add(
            LogInterceptor(
              request: true,
              requestHeader: true,
              requestBody: true,
              responseBody: true,
            ),
          );

  Future<Response> request({
    required RequestMethod method,
    required String path,
    Map<String, dynamic>? queryParameters,
    dynamic data,
    // Options
    Map<String, dynamic>? headers,
    String? contentType,
    ResponseType? responseType,
    int? sendTimeout,
    int? receiveTimeout,
    //
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      return await _requestByMethod(
        method: method,
        path: path.startsWith(_baseUrl) ? path.substring(_baseUrl.length) : path,
        queryParameters: queryParameters,
        data: data,
        options: Options(
          headers: headers,
          contentType: contentType ?? Headers.jsonContentType,
          responseType: responseType ?? ResponseType.json,
          sendTimeout: Duration(
            milliseconds: sendTimeout ?? RemoteConstant.sendTimeout,
          ),
          receiveTimeout: Duration(
            milliseconds: receiveTimeout ?? RemoteConstant.receiveTimeout,
          ),
        ),
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } catch (exception) {
      throw DioExceptionMapper.map(exception);
    }
  }

  Future<Response> _requestByMethod({
    required RequestMethod method,
    required String path,
    Map<String, dynamic>? queryParameters,
    // ignore: avoid-dynamic
    dynamic data,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    switch (method) {
      case RequestMethod.get:
        return await _dio.get(
          path,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress,
        );
      case RequestMethod.post:
        return await _dio.post(
          path,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress,
        );
      case RequestMethod.put:
        return await _dio.put(
          path,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress,
        );
      case RequestMethod.patch:
        return await _dio.patch(
          path,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress,
        );
      case RequestMethod.delete:
        return await _dio.delete(
          path,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
        );
    }
  }
}
