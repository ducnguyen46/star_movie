// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppSettingModel _$$_AppSettingModelFromJson(Map<String, dynamic> json) =>
    _$_AppSettingModel(
      languageCode: json['language_code'] as String? ?? 'en',
      isDarkMode: json['is_dark_mode'] as bool? ?? false,
      isOpened: json['is_opened'] as bool? ?? false,
    );

Map<String, dynamic> _$$_AppSettingModelToJson(_$_AppSettingModel instance) =>
    <String, dynamic>{
      'language_code': instance.languageCode,
      'is_dark_mode': instance.isDarkMode,
      'is_opened': instance.isOpened,
    };
