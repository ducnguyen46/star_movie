// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LanguageModelImpl _$$LanguageModelImplFromJson(Map<String, dynamic> json) =>
    _$LanguageModelImpl(
      code: json['iso_639_1'] as String? ?? '',
      englishName: json['english_name'] as String? ?? '',
      nativeName: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$LanguageModelImplToJson(_$LanguageModelImpl instance) =>
    <String, dynamic>{
      'iso_639_1': instance.code,
      'english_name': instance.englishName,
      'name': instance.nativeName,
    };
