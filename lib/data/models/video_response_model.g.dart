// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoResponseModelImpl _$$VideoResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VideoResponseModelImpl(
      videos: (json['results'] as List<dynamic>?)
              ?.map((e) => VideoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <VideoModel>[],
    );

Map<String, dynamic> _$$VideoResponseModelImplToJson(
        _$VideoResponseModelImpl instance) =>
    <String, dynamic>{
      'results': instance.videos,
    };
