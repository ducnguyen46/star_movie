import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticated_user_model.freezed.dart';
part 'authenticated_user_model.g.dart';

@freezed
class AuthenticatedUserModel with _$AuthenticatedUserModel {
  const factory AuthenticatedUserModel({
    @JsonKey(name: 'is_authenticated') @Default(false) bool isAuthenticatedUser,
    @JsonKey(name: 'session_id') @Default('') String sessionId,
    @JsonKey(name: 'guest_session_id') @Default('') String guestSessionId,
    @JsonKey(name: 'expires_at') @Default('') String expiresAt,
  }) = _AuthenticatedUserModel;

  factory AuthenticatedUserModel.fromJson(Map<String, dynamic> json) =>
      _$AuthenticatedUserModelFromJson(json);
}