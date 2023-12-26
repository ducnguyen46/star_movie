// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Collection _$$_CollectionFromJson(Map<String, dynamic> json) =>
    _$_Collection(
      adult: json['adult'] as bool,
      id: json['id'] as int,
      name: json['name'] as String,
      originalName: json['originalName'] as String,
      overview: json['overview'] as String,
      backdropPath: json['backdropPath'] as String,
      posterPath: json['posterPath'] as String,
    );

Map<String, dynamic> _$$_CollectionToJson(_$_Collection instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'id': instance.id,
      'name': instance.name,
      'originalName': instance.originalName,
      'overview': instance.overview,
      'backdropPath': instance.backdropPath,
      'posterPath': instance.posterPath,
    };
