part of 'app_auth_cubit.dart';

/// state ///
/// loading
/// authentic
/// guest
/// error
/// not log in

@freezed
class AppAuthState with _$AppAuthState {
  const factory AppAuthState.loading() = AppAuthLoading;

  const factory AppAuthState.authenticated({
    required String sessionId,
  }) = AppAuthAuthenticated;

  const factory AppAuthState.guest({
    required String guestSessionId,
    required String expiresAt,
  }) = AppAuthGuest;

  const factory AppAuthState.error({
    @Default('') String message,
    AppException? exception,
  }) = AppAuthError;

  const factory AppAuthState.notLogIn() = AppAuthNotLogIn;
}
