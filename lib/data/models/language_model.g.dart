// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageModel _$$_LanguageModelFromJson(Map<String, dynamic> json) =>
    _$_LanguageModel(
      code: json['iso_639_1'] as String? ?? '',
      englishName: json['english_name'] as String? ?? '',
      nativeName: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$_LanguageModelToJson(_$_LanguageModel instance) =>
    <String, dynamic>{
      'iso_639_1': instance.code,
      'english_name': instance.englishName,
      'name': instance.nativeName,
    };
