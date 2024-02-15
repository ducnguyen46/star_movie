// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppSettingModelImpl _$$AppSettingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AppSettingModelImpl(
      languageCode: json['language_code'] as String? ?? 'en',
      isDarkMode: json['is_dark_mode'] as bool? ?? false,
      isOpened: json['is_opened'] as bool? ?? false,
    );

Map<String, dynamic> _$$AppSettingModelImplToJson(
        _$AppSettingModelImpl instance) =>
    <String, dynamic>{
      'language_code': instance.languageCode,
      'is_dark_mode': instance.isDarkMode,
      'is_opened': instance.isOpened,
    };
