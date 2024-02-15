// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crew.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CrewImpl _$$CrewImplFromJson(Map<String, dynamic> json) => _$CrewImpl(
      id: json['id'] as int,
      castId: json['castId'] as int,
      creditId: json['creditId'] as String,
      name: json['name'] as String,
      job: json['job'] as String,
      department: json['department'] as String,
      profilePath: json['profilePath'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
    );

Map<String, dynamic> _$$CrewImplToJson(_$CrewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'castId': instance.castId,
      'creditId': instance.creditId,
      'name': instance.name,
      'job': instance.job,
      'department': instance.department,
      'profilePath': instance.profilePath,
      'popularity': instance.popularity,
      'gender': _$GenderEnumMap[instance.gender]!,
    };

const _$GenderEnumMap = {
  Gender.notSpecified: 'notSpecified',
  Gender.male: 'male',
  Gender.female: 'female',
};
