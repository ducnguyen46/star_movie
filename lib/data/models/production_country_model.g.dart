// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductionCountryImpl _$$ProductionCountryImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductionCountryImpl(
      countryCode: json['iso_3166_1'] as String? ?? '',
      countryName: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$ProductionCountryImplToJson(
        _$ProductionCountryImpl instance) =>
    <String, dynamic>{
      'iso_3166_1': instance.countryCode,
      'name': instance.countryName,
    };
