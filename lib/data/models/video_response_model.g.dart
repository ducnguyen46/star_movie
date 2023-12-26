// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoResponseModel _$$_VideoResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_VideoResponseModel(
      videos: (json['results'] as List<dynamic>?)
              ?.map((e) => VideoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <VideoModel>[],
    );

Map<String, dynamic> _$$_VideoResponseModelToJson(
        _$_VideoResponseModel instance) =>
    <String, dynamic>{
      'results': instance.videos,
    };
