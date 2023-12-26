// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountStateModel _$$_AccountStateModelFromJson(Map<String, dynamic> json) =>
    _$_AccountStateModel(
      movieId: json['id'] as int? ?? -1,
      favorite: json['favorite'] as bool? ?? false,
      rated: json['rated'] ?? false,
      watchlist: json['watchlist'] as bool? ?? false,
    );

Map<String, dynamic> _$$_AccountStateModelToJson(
        _$_AccountStateModel instance) =>
    <String, dynamic>{
      'id': instance.movieId,
      'favorite': instance.favorite,
      'rated': instance.rated,
      'watchlist': instance.watchlist,
    };
