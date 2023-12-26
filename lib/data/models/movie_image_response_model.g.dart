// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_image_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieImageResponseModel _$$_MovieImageResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_MovieImageResponseModel(
      backdrops: (json['backdrops'] as List<dynamic>?)
              ?.map((e) => MovieImageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MovieImageModel>[],
      logos: (json['logos'] as List<dynamic>?)
              ?.map((e) => MovieImageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MovieImageModel>[],
      posters: (json['posters'] as List<dynamic>?)
              ?.map((e) => MovieImageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MovieImageModel>[],
    );

Map<String, dynamic> _$$_MovieImageResponseModelToJson(
        _$_MovieImageResponseModel instance) =>
    <String, dynamic>{
      'backdrops': instance.backdrops,
      'logos': instance.logos,
      'posters': instance.posters,
    };
