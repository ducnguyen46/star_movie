import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticated_user_data.freezed.dart';
part 'authenticated_user_data.g.dart';

@freezed
class AuthenticatedUserData with _$AuthenticatedUserData {
  const factory AuthenticatedUserData({
    @Default(false) bool isAuthenticatedUser,
    @Default('') String sessionId,
    @Default('') String guestSessionId,
    @Default('') String expiresAt,
  }) = _AuthenticatedUserData;

  factory AuthenticatedUserData.fromJson(Map<String, dynamic> json) =>
      _$AuthenticatedUserDataFromJson(json);
}
