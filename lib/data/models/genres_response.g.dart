// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genres_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenresResponse _$$_GenresResponseFromJson(Map<String, dynamic> json) =>
    _$_GenresResponse(
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <GenreModel>[],
    );

Map<String, dynamic> _$$_GenresResponseToJson(_$_GenresResponse instance) =>
    <String, dynamic>{
      'genres': instance.genres,
    };
