// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectionImpl _$$CollectionImplFromJson(Map<String, dynamic> json) =>
    _$CollectionImpl(
      adult: json['adult'] as bool,
      id: json['id'] as int,
      name: json['name'] as String,
      originalName: json['originalName'] as String,
      overview: json['overview'] as String,
      backdropPath: json['backdropPath'] as String,
      posterPath: json['posterPath'] as String,
    );

Map<String, dynamic> _$$CollectionImplToJson(_$CollectionImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'id': instance.id,
      'name': instance.name,
      'originalName': instance.originalName,
      'overview': instance.overview,
      'backdropPath': instance.backdropPath,
      'posterPath': instance.posterPath,
    };
