import 'package:dio/dio.dart';

abstract class BaseInterceptor extends InterceptorsWrapper {
  static const headerAuthenticationPriority = 90;
  static const connectivityPriority = 80;
  static const refreshSessionPriority = 70;

  static const logPriority = 0; // Add last

  /// Priority of interceptor
  /// Higher add first
  int get priority;
}

extension ListInterceptor on List<BaseInterceptor> {
  List<BaseInterceptor> sortPriority() {
    sort((a, b) => a.priority.compareTo(b.priority));
    return this;
  }
}