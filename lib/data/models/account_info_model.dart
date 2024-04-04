import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_info_model.freezed.dart';
part 'account_info_model.g.dart';

@freezed
class AccountInfoModel with _$AccountInfoModel {
  const factory AccountInfoModel({
    @JsonKey(name: 'avatar')
    @Default(AccountAvatarModel())
    AccountAvatarModel avatar,
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'username') @Default('') String username,
  }) = _AccountInfoModel;

  factory AccountInfoModel.fromJson(Map<String, dynamic> json) =>
      _$AccountInfoModelFromJson(json);
}

@freezed
class AccountAvatarModel with _$AccountAvatarModel {
  const factory AccountAvatarModel({
    @JsonKey(name: 'gravatar') @Default(GravatarModel()) GravatarModel gravatar,
    @JsonKey(name: 'tmdb')
    @Default(TMDBAvatarModel())
    TMDBAvatarModel tmdbAvatar,
  }) = _AccountAvatarModel;

  factory AccountAvatarModel.fromJson(Map<String, dynamic> json) =>
      _$AccountAvatarModelFromJson(json);
}

@freezed
class GravatarModel with _$GravatarModel {
  const factory GravatarModel({
    @JsonKey(name: 'hash') @Default('') String hash,
  }) = _GravatarModel;

  factory GravatarModel.fromJson(Map<String, dynamic> json) =>
      _$GravatarModelFromJson(json);
}

@freezed
class TMDBAvatarModel with _$TMDBAvatarModel {
  const factory TMDBAvatarModel({
    @JsonKey(name: 'avatar_path') @Default(null) String? avatarPath,
  }) = _TMDBAvatarModel;

  factory TMDBAvatarModel.fromJson(Map<String, dynamic> json) =>
      _$TMDBAvatarModelFromJson(json);
}
