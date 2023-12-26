part of 'login_cubit.dart';

/// state ///
// initial
// requesting token
// got token
// requesting guest session
// got guest session
// error

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;
  const factory LoginState.requestingToken() = RequestingToken;
  const factory LoginState.gotToken({
    required String token,
  }) = GotToken;
  const factory LoginState.requestTMDBSession() = RequestingTMDBSession;
  const factory LoginState.gotTMDBSession({
    required String sessionId
}) = GotTMDBSession;
  const factory LoginState.requestingGuest() = RequestingGuest;
  const factory LoginState.gotGuestSession({
    required String guestSessionId,
  }) = GotGuestSession;
  const factory LoginState.error({
    @Default('') String message,
    AppException? exception,
    void Function()? onRetry,
  }) = Error;
}
