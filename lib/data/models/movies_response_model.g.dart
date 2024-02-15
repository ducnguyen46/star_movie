// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoviesResponseModelImpl _$$MoviesResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MoviesResponseModelImpl(
      page: json['page'] as int? ?? 0,
      totalPage: json['total_pages'] as int? ?? 0,
      movies: (json['results'] as List<dynamic>?)
              ?.map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MovieModel>[],
    );

Map<String, dynamic> _$$MoviesResponseModelImplToJson(
        _$MoviesResponseModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_pages': instance.totalPage,
      'results': instance.movies,
    };
