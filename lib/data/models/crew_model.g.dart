// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crew_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CrewModel _$$_CrewModelFromJson(Map<String, dynamic> json) => _$_CrewModel(
      id: json['id'] as int? ?? -1,
      castId: json['cast_id'] as int? ?? -1,
      creditId: json['credit_id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      job: json['job'] as String? ?? '',
      department: json['department'] as String? ?? '',
      profilePath: json['profile_path'] as String? ?? '',
      popularity: (json['popularity'] as num?)?.toDouble() ?? 0,
      gender: json['gender'] as int? ?? -1,
    );

Map<String, dynamic> _$$_CrewModelToJson(_$_CrewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cast_id': instance.castId,
      'credit_id': instance.creditId,
      'name': instance.name,
      'job': instance.job,
      'department': instance.department,
      'profile_path': instance.profilePath,
      'popularity': instance.popularity,
      'gender': instance.gender,
    };
