// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegionModelImpl _$$RegionModelImplFromJson(Map<String, dynamic> json) =>
    _$RegionModelImpl(
      regionCode: json['iso_3166_1'] as String? ?? '',
      englishName: json['english_name'] as String? ?? '',
      nativeName: json['native_name'] as String? ?? '',
    );

Map<String, dynamic> _$$RegionModelImplToJson(_$RegionModelImpl instance) =>
    <String, dynamic>{
      'iso_3166_1': instance.regionCode,
      'english_name': instance.englishName,
      'native_name': instance.nativeName,
    };

_$RegionsModelImpl _$$RegionsModelImplFromJson(Map<String, dynamic> json) =>
    _$RegionsModelImpl(
      regions: (json['regions'] as List<dynamic>?)
              ?.map((e) => RegionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$RegionsModelImplToJson(_$RegionsModelImpl instance) =>
    <String, dynamic>{
      'regions': instance.regions,
    };
