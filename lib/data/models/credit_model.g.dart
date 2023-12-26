// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreditModel _$$_CreditModelFromJson(Map<String, dynamic> json) =>
    _$_CreditModel(
      casts: (json['cast'] as List<dynamic>?)
              ?.map((e) => CastModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CastModel>[],
      crews: (json['crew'] as List<dynamic>?)
              ?.map((e) => CrewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CrewModel>[],
    );

Map<String, dynamic> _$$_CreditModelToJson(_$_CreditModel instance) =>
    <String, dynamic>{
      'cast': instance.casts,
      'crew': instance.crews,
    };
