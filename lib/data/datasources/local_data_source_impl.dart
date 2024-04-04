import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:star_movie/data/models/models.dart';
import 'package:star_movie/share/constants/constants.dart';
import 'package:star_movie/share/local_storage/local_storage_service.dart';

import 'local_data_source.dart';

@Injectable(as: LocalDataSource)
class LocalDataSourceImpl implements LocalDataSource {
  const LocalDataSourceImpl({required this.service});
  final LocalStorageService service;

  /// Get and save setting from storage when open app
  @override
  Future<AppSettingModel> getAppSettingFromStorage() async {
    String? appSettingPre =
        service.getString(key: LocalStorageConstant.keyAppSetting);
    if (appSettingPre != null) {
      return AppSettingModel.fromJson(
        jsonDecode(appSettingPre) as Map<String, dynamic>,
      );
    } else {
      const defaultAppSetting = AppSettingModel();
      // Save default setting to local storage
      try {
        await service.saveString(
          key: LocalStorageConstant.keyAppSetting,
          value: jsonEncode(defaultAppSetting.toJson()),
        );
      } catch (_) {
        rethrow;
      }
      return defaultAppSetting;
    }
  }

  /// Get authenticated user data from storage
  @override
  AuthenticatedUserModel? getAuthenticatedUserDataFromStorage() {
    String? authenUserJson =
        service.getString(key: LocalStorageConstant.keyAuthenticatedUser);
    if (authenUserJson != null) {
      return AuthenticatedUserModel.fromJson(
        jsonDecode(authenUserJson) as Map<String, dynamic>,
      );
    }
    return null;
  }

  /// Get regions data from storage
  @override
  RegionsModel getRegionsModelFromStorage() {
    String? regionsJson =
        service.getString(key: LocalStorageConstant.keyRegions);
    if (regionsJson != null) {
      return RegionsModel.fromJson(
        jsonDecode(regionsJson) as Map<String, dynamic>,
      );
    }
    return const RegionsModel();
  }

  /// Save app setting data to storage
  @override
  Future<void> saveAppSettingToStorage(AppSettingModel setting) async {
    try {
      return await service.saveString(
        key: LocalStorageConstant.keyAppSetting,
        value: jsonEncode(setting.toJson()),
      );
    } catch (_) {
      rethrow;
    }
  }

  /// Save authenticated user data
  @override
  Future<void> saveAuthenticatedUserDataToStorage(
      AuthenticatedUserModel data) async {
    try {
      return await service.saveString(
        key: LocalStorageConstant.keyAuthenticatedUser,
        value: jsonEncode(data.toJson()),
      );
    } catch (_) {
      rethrow;
    }
  }

  /// Save TMDB regions to local storage
  @override
  Future<void> saveRegionsToStorage(RegionsModel regions) async {
    try {
      return await service.saveString(
        key: LocalStorageConstant.keyRegions,
        value: jsonEncode(regions.toJson()),
      );
    } catch (_) {
      rethrow;
    }
  }

  @override
  List<GenreModel> getGenresModelFromStorage() {
    try {
      final genresModelJson = service.getString(
        key: LocalStorageConstant.keyMovieGenres,
      );

      if (genresModelJson != null) {
        return (jsonDecode(genresModelJson) as List)
            .map((json) => GenreModel.fromJson(json))
            .toList();
      }

      return [];
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<bool> saveGenresModelsToStorage(List<GenreModel> genresModel) async {
    try {
      await service.saveString(
          key: LocalStorageConstant.keyMovieGenres,
          value: jsonEncode(genresModel));
      return true;
    } catch (_) {
      rethrow;
    }
  }

  @override
  List<LanguageModel> getLanguageModelFromStorage() {
    try {
      final lanaguagesModelJson = service.getString(
        key: LocalStorageConstant.keyLanguage,
      );

      if (lanaguagesModelJson != null) {
        return (jsonDecode(lanaguagesModelJson) as List)
            .map((json) => LanguageModel.fromJson(json))
            .toList();
      }

      return [];
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<bool> saveLanguagesModelToStorage(
      List<LanguageModel> languagesModel) async {
    try {
      await service.saveString(
          key: LocalStorageConstant.keyLanguage,
          value: jsonEncode(languagesModel));
      return true;
    } catch (_) {
      rethrow;
    }
  }

  @override
  AccountInfoModel? getAccountInfoModelFromStorage() {
    try {
      final accountInfoModelJson =
          service.getString(key: LocalStorageConstant.keyAccountInfo);
      if (accountInfoModelJson != null) {
        return AccountInfoModel.fromJson(jsonDecode(accountInfoModelJson));
      } else {
        return null;
      }
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> saveAccountInfoModelToStorage(
      AccountInfoModel accountInfoModel) async {
    try {
      await service.saveString(
        key: LocalStorageConstant.keyAccountInfo,
        value: jsonEncode(accountInfoModel),
      );
    } catch (_) {
      rethrow;
    }
  }

  @override
  void logOutAccount() async {
    try {
      service.removeData(key: LocalStorageConstant.keyAccountInfo);
      service.removeData(key: LocalStorageConstant.keyAuthenticatedUser);
    } catch (_) {
      rethrow;
    }
  }
}
