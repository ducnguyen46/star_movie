// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegionModel _$$_RegionModelFromJson(Map<String, dynamic> json) =>
    _$_RegionModel(
      regionCode: json['iso_3166_1'] as String? ?? '',
      englishName: json['english_name'] as String? ?? '',
      nativeName: json['native_name'] as String? ?? '',
    );

Map<String, dynamic> _$$_RegionModelToJson(_$_RegionModel instance) =>
    <String, dynamic>{
      'iso_3166_1': instance.regionCode,
      'english_name': instance.englishName,
      'native_name': instance.nativeName,
    };

_$_RegionsModel _$$_RegionsModelFromJson(Map<String, dynamic> json) =>
    _$_RegionsModel(
      regions: (json['regions'] as List<dynamic>?)
              ?.map((e) => RegionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_RegionsModelToJson(_$_RegionsModel instance) =>
    <String, dynamic>{
      'regions': instance.regions,
    };
