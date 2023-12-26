// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoModel _$$_VideoModelFromJson(Map<String, dynamic> json) =>
    _$_VideoModel(
      title: json['name'] as String? ?? '',
      key: json['key'] as String? ?? '',
      site: json['site'] as String? ?? '',
      isOfficialVid: json['official'] as bool? ?? false,
    );

Map<String, dynamic> _$$_VideoModelToJson(_$_VideoModel instance) =>
    <String, dynamic>{
      'name': instance.title,
      'key': instance.key,
      'site': instance.site,
      'official': instance.isOfficialVid,
    };
