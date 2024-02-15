// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CastModelImpl _$$CastModelImplFromJson(Map<String, dynamic> json) =>
    _$CastModelImpl(
      id: json['id'] as int? ?? -1,
      castId: json['cast_id'] as int? ?? -1,
      creditId: json['credit_id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      character: json['character'] as String? ?? '',
      knowForDepartment: json['known_for_department'] as String? ?? '',
      profilePath: json['profile_path'] as String? ?? '',
      popularity: (json['popularity'] as num?)?.toDouble() ?? 0,
      order: json['order'] as int? ?? -1,
      gender: json['gender'] as int? ?? -1,
    );

Map<String, dynamic> _$$CastModelImplToJson(_$CastModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cast_id': instance.castId,
      'credit_id': instance.creditId,
      'name': instance.name,
      'character': instance.character,
      'known_for_department': instance.knowForDepartment,
      'profile_path': instance.profilePath,
      'popularity': instance.popularity,
      'order': instance.order,
      'gender': instance.gender,
    };
