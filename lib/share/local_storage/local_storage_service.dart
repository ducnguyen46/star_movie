import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../exceptions/exceptions.dart';

@LazySingleton()
class LocalStorageService {
  const LocalStorageService({required SharedPreferences sp}) : _sharedPreferences = sp;
  final SharedPreferences _sharedPreferences;

  /////////
  // Get / Save string value
  ////////

  String? getString({required String key}) {
    try {
      return _sharedPreferences.getString(key);
    } catch (e) {
      throw LocalException(LocalExceptionType.get, rootException: e);
    }
  }

  Future<void> saveString({required String key, required String value}) async {
    try {
      await _sharedPreferences.setString(key, value);
    } catch (e) {
      throw LocalException(LocalExceptionType.save, rootException: e);
    }
  }

  /////////
  // Get / Save integer value
  ////////

  int? getInt({required String key}) {
    try {
      return _sharedPreferences.getInt(key);
    } catch (e) {
      throw LocalException(LocalExceptionType.get, rootException: e);
    }
  }

  Future<void> saveInt({required String key, required int value}) async {
    try {
      await _sharedPreferences.setInt(key, value);
    } catch (e) {
      throw LocalException(LocalExceptionType.save, rootException: e);
    }
  }

  /////////
  // Get / Save boolean value
  ////////

  bool? getBool({required String key}) {
    try {
      return _sharedPreferences.getBool(key);
    } catch (e) {
      throw LocalException(LocalExceptionType.get, rootException: e);
    }
  }

  Future<void> saveBool({required String key, required bool value}) async {
    try {
      await _sharedPreferences.setBool(key, value);
    } catch (e) {
      throw LocalException(LocalExceptionType.save, rootException: e);
    }
  }

  /////////
  // Get / Save double value
  ////////

  double? getDouble({required String key}) {
    try {
      return _sharedPreferences.getDouble(key);
    } catch (e) {
      throw LocalException(LocalExceptionType.get, rootException: e);
    }
  }

  Future<void> saveDouble({required String key, required double value}) async {
    try {
      await _sharedPreferences.setDouble(key, value);
    } catch (e) {
      throw LocalException(LocalExceptionType.save, rootException: e);
    }
  }
}
