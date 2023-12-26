import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_setting_model.freezed.dart';
part 'app_setting_model.g.dart';

@freezed
class AppSettingModel with _$AppSettingModel {
  const factory AppSettingModel({
    @JsonKey(name: 'language_code') @Default('en') String languageCode,
    @JsonKey(name: 'is_dark_mode') @Default(false) bool isDarkMode,
    @JsonKey(name: 'is_opened') @Default(false) bool isOpened,
  }) = _AppSettingModel;

  factory AppSettingModel.fromJson(Map<String, dynamic> json) =>
      _$AppSettingModelFromJson(json);
}
