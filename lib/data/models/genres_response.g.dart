// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genres_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenresResponseImpl _$$GenresResponseImplFromJson(Map<String, dynamic> json) =>
    _$GenresResponseImpl(
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <GenreModel>[],
    );

Map<String, dynamic> _$$GenresResponseImplToJson(
        _$GenresResponseImpl instance) =>
    <String, dynamic>{
      'genres': instance.genres,
    };
