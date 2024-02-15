// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreditModelImpl _$$CreditModelImplFromJson(Map<String, dynamic> json) =>
    _$CreditModelImpl(
      casts: (json['cast'] as List<dynamic>?)
              ?.map((e) => CastModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CastModel>[],
      crews: (json['crew'] as List<dynamic>?)
              ?.map((e) => CrewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CrewModel>[],
    );

Map<String, dynamic> _$$CreditModelImplToJson(_$CreditModelImpl instance) =>
    <String, dynamic>{
      'cast': instance.casts,
      'crew': instance.crews,
    };
