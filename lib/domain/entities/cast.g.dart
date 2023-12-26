// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cast _$$_CastFromJson(Map<String, dynamic> json) => _$_Cast(
      id: json['id'] as int,
      castId: json['castId'] as int,
      creditId: json['creditId'] as String,
      name: json['name'] as String,
      character: json['character'] as String,
      knowForDepartment: json['knowForDepartment'] as String,
      profilePath: json['profilePath'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      order: json['order'] as int,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
    );

Map<String, dynamic> _$$_CastToJson(_$_Cast instance) => <String, dynamic>{
      'id': instance.id,
      'castId': instance.castId,
      'creditId': instance.creditId,
      'name': instance.name,
      'character': instance.character,
      'knowForDepartment': instance.knowForDepartment,
      'profilePath': instance.profilePath,
      'popularity': instance.popularity,
      'order': instance.order,
      'gender': _$GenderEnumMap[instance.gender]!,
    };

const _$GenderEnumMap = {
  Gender.notSpecified: 'notSpecified',
  Gender.male: 'male',
  Gender.female: 'female',
};
