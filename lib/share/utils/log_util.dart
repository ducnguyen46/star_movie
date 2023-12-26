import 'dart:async';
import 'dart:developer' as dev;

/// Log only work in debug mode
class LogUtil {
  LogUtil._();

  static void d(
    String message, {
    String name = '',
    Zone? zone,
    DateTime? time,
  }) {
    dev.log(
      '💙 $message',
      name: name,
      zone: zone ?? Zone.current,
      time: time,
    );
  }

  static void e(
    String message, {
    String name = '',
    Zone? zone,
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    dev.log(
      '🚫 $message',
      name: name,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }
}
