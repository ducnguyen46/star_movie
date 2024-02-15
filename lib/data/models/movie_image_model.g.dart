// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieImageModelImpl _$$MovieImageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieImageModelImpl(
      height: json['height'] as int? ?? 0,
      width: json['width'] as int? ?? 0,
      filePath: json['file_path'] as String? ?? '',
    );

Map<String, dynamic> _$$MovieImageModelImplToJson(
        _$MovieImageModelImpl instance) =>
    <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
      'file_path': instance.filePath,
    };
