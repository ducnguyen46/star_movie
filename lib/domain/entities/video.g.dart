// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Video _$$_VideoFromJson(Map<String, dynamic> json) => _$_Video(
      title: json['title'] as String,
      key: json['key'] as String,
      site: $enumDecode(_$VideoSiteEnumMap, json['site']),
      isOfficialVid: json['isOfficialVid'] as bool,
    );

Map<String, dynamic> _$$_VideoToJson(_$_Video instance) => <String, dynamic>{
      'title': instance.title,
      'key': instance.key,
      'site': _$VideoSiteEnumMap[instance.site]!,
      'isOfficialVid': instance.isOfficialVid,
    };

const _$VideoSiteEnumMap = {
  VideoSite.youtube: 'youtube',
  VideoSite.other: 'other',
};
