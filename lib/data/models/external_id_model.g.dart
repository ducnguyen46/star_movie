// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExternalIdModel _$$_ExternalIdModelFromJson(Map<String, dynamic> json) =>
    _$_ExternalIdModel(
      imdbId: json['imdb_id'] as String? ?? '',
      wikiId: json['wikidata_id'] as String? ?? '',
      facebookId: json['facebook_id'] as String? ?? '',
      instagramId: json['instagram_id'] as String? ?? '',
      twitterId: json['twitter_id'] as String? ?? '',
    );

Map<String, dynamic> _$$_ExternalIdModelToJson(_$_ExternalIdModel instance) =>
    <String, dynamic>{
      'imdb_id': instance.imdbId,
      'wikidata_id': instance.wikiId,
      'facebook_id': instance.facebookId,
      'instagram_id': instance.instagramId,
      'twitter_id': instance.twitterId,
    };
