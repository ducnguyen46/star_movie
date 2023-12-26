// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CollectionModel _$$_CollectionModelFromJson(Map<String, dynamic> json) =>
    _$_CollectionModel(
      adult: json['adult'] as bool? ?? false,
      id: json['id'] as int? ?? -1,
      name: json['name'] as String? ?? '',
      originalName: json['original_name'] as String? ?? '',
      overview: json['overview'] as String? ?? '',
      backdropPath: json['backdrop_path'] as String? ?? '',
      posterPath: json['poster_path'] as String? ?? '',
    );

Map<String, dynamic> _$$_CollectionModelToJson(_$_CollectionModel instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'id': instance.id,
      'name': instance.name,
      'original_name': instance.originalName,
      'overview': instance.overview,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
    };
