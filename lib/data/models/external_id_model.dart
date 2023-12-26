import 'package:freezed_annotation/freezed_annotation.dart';

part 'external_id_model.freezed.dart';
part 'external_id_model.g.dart';

@freezed
class ExternalIdModel with _$ExternalIdModel {
  const factory ExternalIdModel({
    @JsonKey(name: 'imdb_id') @Default('') String imdbId,
    @JsonKey(name: 'wikidata_id') @Default('') String wikiId,
    @JsonKey(name: 'facebook_id') @Default('') String facebookId,
    @JsonKey(name: 'instagram_id') @Default('') String instagramId,
    @JsonKey(name: 'twitter_id') @Default('') String twitterId,
  }) = _ExternalIdModel;

  factory ExternalIdModel.fromJson(Map<String, dynamic> json) =>
      _$ExternalIdModelFromJson(json);
}
