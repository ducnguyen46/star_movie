// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Credit _$$_CreditFromJson(Map<String, dynamic> json) => _$_Credit(
      casts: (json['casts'] as List<dynamic>)
          .map((e) => Cast.fromJson(e as Map<String, dynamic>))
          .toList(),
      crews: (json['crews'] as List<dynamic>)
          .map((e) => Crew.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CreditToJson(_$_Credit instance) => <String, dynamic>{
      'casts': instance.casts,
      'crews': instance.crews,
    };
