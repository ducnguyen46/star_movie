// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountStateModelImpl _$$AccountStateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountStateModelImpl(
      movieId: json['id'] as int? ?? -1,
      favorite: json['favorite'] as bool? ?? false,
      rated: json['rated'] ?? false,
      watchlist: json['watchlist'] as bool? ?? false,
    );

Map<String, dynamic> _$$AccountStateModelImplToJson(
        _$AccountStateModelImpl instance) =>
    <String, dynamic>{
      'id': instance.movieId,
      'favorite': instance.favorite,
      'rated': instance.rated,
      'watchlist': instance.watchlist,
    };
