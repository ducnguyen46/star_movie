import 'package:freezed_annotation/freezed_annotation.dart';

part 'external_id.freezed.dart';
part 'external_id.g.dart';

@freezed
class ExternalId with _$ExternalId {
  const factory ExternalId({
    required String imdbId,
    required String wikiId,
    required String facebookId,
    required String instagramId,
    required String twitterId,
  }) = _ExternalId;

  factory ExternalId.fromJson(Map<String, dynamic> json) =>
      _$ExternalIdFromJson(json);
}
