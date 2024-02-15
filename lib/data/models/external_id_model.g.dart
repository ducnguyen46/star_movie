// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExternalIdModelImpl _$$ExternalIdModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ExternalIdModelImpl(
      imdbId: json['imdb_id'] as String? ?? '',
      wikiId: json['wikidata_id'] as String? ?? '',
      facebookId: json['facebook_id'] as String? ?? '',
      instagramId: json['instagram_id'] as String? ?? '',
      twitterId: json['twitter_id'] as String? ?? '',
    );

Map<String, dynamic> _$$ExternalIdModelImplToJson(
        _$ExternalIdModelImpl instance) =>
    <String, dynamic>{
      'imdb_id': instance.imdbId,
      'wikidata_id': instance.wikiId,
      'facebook_id': instance.facebookId,
      'instagram_id': instance.instagramId,
      'twitter_id': instance.twitterId,
    };
