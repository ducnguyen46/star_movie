import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_info.freezed.dart';

@freezed
class AccountInfo with _$AccountInfo {
  const factory AccountInfo({
    required AccountAvatar avatar,
    required int id,
    required String name,
    required String username,
  }) = _AccountInfo;
}

@freezed
class AccountAvatar with _$AccountAvatar {
  const factory AccountAvatar({
    required Gravatar gravatar,
    required TMDBAvatar tmdbAvatar,
  }) = _AccountAvatar;
}

@freezed
class Gravatar with _$Gravatar {
  const factory Gravatar({
    required String hash,
  }) = _Gravatar;
}

@freezed
class TMDBAvatar with _$TMDBAvatar {
  const factory TMDBAvatar({
    required String? avatarPath,
  }) = _TMDBAvatar;
}
