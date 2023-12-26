// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestingToken,
    required TResult Function(String token) gotToken,
    required TResult Function() requestTMDBSession,
    required TResult Function(String sessionId) gotTMDBSession,
    required TResult Function() requestingGuest,
    required TResult Function(String guestSessionId) gotGuestSession,
    required TResult Function(
            String message, AppException? exception, void Function()? onRetry)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingToken,
    TResult? Function(String token)? gotToken,
    TResult? Function()? requestTMDBSession,
    TResult? Function(String sessionId)? gotTMDBSession,
    TResult? Function()? requestingGuest,
    TResult? Function(String guestSessionId)? gotGuestSession,
    TResult? Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingToken,
    TResult Function(String token)? gotToken,
    TResult Function()? requestTMDBSession,
    TResult Function(String sessionId)? gotTMDBSession,
    TResult Function()? requestingGuest,
    TResult Function(String guestSessionId)? gotGuestSession,
    TResult Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(RequestingToken value) requestingToken,
    required TResult Function(GotToken value) gotToken,
    required TResult Function(RequestingTMDBSession value) requestTMDBSession,
    required TResult Function(GotTMDBSession value) gotTMDBSession,
    required TResult Function(RequestingGuest value) requestingGuest,
    required TResult Function(GotGuestSession value) gotGuestSession,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(RequestingToken value)? requestingToken,
    TResult? Function(GotToken value)? gotToken,
    TResult? Function(RequestingTMDBSession value)? requestTMDBSession,
    TResult? Function(GotTMDBSession value)? gotTMDBSession,
    TResult? Function(RequestingGuest value)? requestingGuest,
    TResult? Function(GotGuestSession value)? gotGuestSession,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RequestingToken value)? requestingToken,
    TResult Function(GotToken value)? gotToken,
    TResult Function(RequestingTMDBSession value)? requestTMDBSession,
    TResult Function(GotTMDBSession value)? gotTMDBSession,
    TResult Function(RequestingGuest value)? requestingGuest,
    TResult Function(GotGuestSession value)? gotGuestSession,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestingToken,
    required TResult Function(String token) gotToken,
    required TResult Function() requestTMDBSession,
    required TResult Function(String sessionId) gotTMDBSession,
    required TResult Function() requestingGuest,
    required TResult Function(String guestSessionId) gotGuestSession,
    required TResult Function(
            String message, AppException? exception, void Function()? onRetry)
        error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingToken,
    TResult? Function(String token)? gotToken,
    TResult? Function()? requestTMDBSession,
    TResult? Function(String sessionId)? gotTMDBSession,
    TResult? Function()? requestingGuest,
    TResult? Function(String guestSessionId)? gotGuestSession,
    TResult? Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingToken,
    TResult Function(String token)? gotToken,
    TResult Function()? requestTMDBSession,
    TResult Function(String sessionId)? gotTMDBSession,
    TResult Function()? requestingGuest,
    TResult Function(String guestSessionId)? gotGuestSession,
    TResult Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(RequestingToken value) requestingToken,
    required TResult Function(GotToken value) gotToken,
    required TResult Function(RequestingTMDBSession value) requestTMDBSession,
    required TResult Function(GotTMDBSession value) gotTMDBSession,
    required TResult Function(RequestingGuest value) requestingGuest,
    required TResult Function(GotGuestSession value) gotGuestSession,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(RequestingToken value)? requestingToken,
    TResult? Function(GotToken value)? gotToken,
    TResult? Function(RequestingTMDBSession value)? requestTMDBSession,
    TResult? Function(GotTMDBSession value)? gotTMDBSession,
    TResult? Function(RequestingGuest value)? requestingGuest,
    TResult? Function(GotGuestSession value)? gotGuestSession,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RequestingToken value)? requestingToken,
    TResult Function(GotToken value)? gotToken,
    TResult Function(RequestingTMDBSession value)? requestTMDBSession,
    TResult Function(GotTMDBSession value)? gotTMDBSession,
    TResult Function(RequestingGuest value)? requestingGuest,
    TResult Function(GotGuestSession value)? gotGuestSession,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements LoginState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$RequestingTokenCopyWith<$Res> {
  factory _$$RequestingTokenCopyWith(
          _$RequestingToken value, $Res Function(_$RequestingToken) then) =
      __$$RequestingTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestingTokenCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$RequestingToken>
    implements _$$RequestingTokenCopyWith<$Res> {
  __$$RequestingTokenCopyWithImpl(
      _$RequestingToken _value, $Res Function(_$RequestingToken) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestingToken implements RequestingToken {
  const _$RequestingToken();

  @override
  String toString() {
    return 'LoginState.requestingToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestingToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestingToken,
    required TResult Function(String token) gotToken,
    required TResult Function() requestTMDBSession,
    required TResult Function(String sessionId) gotTMDBSession,
    required TResult Function() requestingGuest,
    required TResult Function(String guestSessionId) gotGuestSession,
    required TResult Function(
            String message, AppException? exception, void Function()? onRetry)
        error,
  }) {
    return requestingToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingToken,
    TResult? Function(String token)? gotToken,
    TResult? Function()? requestTMDBSession,
    TResult? Function(String sessionId)? gotTMDBSession,
    TResult? Function()? requestingGuest,
    TResult? Function(String guestSessionId)? gotGuestSession,
    TResult? Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
  }) {
    return requestingToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingToken,
    TResult Function(String token)? gotToken,
    TResult Function()? requestTMDBSession,
    TResult Function(String sessionId)? gotTMDBSession,
    TResult Function()? requestingGuest,
    TResult Function(String guestSessionId)? gotGuestSession,
    TResult Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
    required TResult orElse(),
  }) {
    if (requestingToken != null) {
      return requestingToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(RequestingToken value) requestingToken,
    required TResult Function(GotToken value) gotToken,
    required TResult Function(RequestingTMDBSession value) requestTMDBSession,
    required TResult Function(GotTMDBSession value) gotTMDBSession,
    required TResult Function(RequestingGuest value) requestingGuest,
    required TResult Function(GotGuestSession value) gotGuestSession,
    required TResult Function(Error value) error,
  }) {
    return requestingToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(RequestingToken value)? requestingToken,
    TResult? Function(GotToken value)? gotToken,
    TResult? Function(RequestingTMDBSession value)? requestTMDBSession,
    TResult? Function(GotTMDBSession value)? gotTMDBSession,
    TResult? Function(RequestingGuest value)? requestingGuest,
    TResult? Function(GotGuestSession value)? gotGuestSession,
    TResult? Function(Error value)? error,
  }) {
    return requestingToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RequestingToken value)? requestingToken,
    TResult Function(GotToken value)? gotToken,
    TResult Function(RequestingTMDBSession value)? requestTMDBSession,
    TResult Function(GotTMDBSession value)? gotTMDBSession,
    TResult Function(RequestingGuest value)? requestingGuest,
    TResult Function(GotGuestSession value)? gotGuestSession,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (requestingToken != null) {
      return requestingToken(this);
    }
    return orElse();
  }
}

abstract class RequestingToken implements LoginState {
  const factory RequestingToken() = _$RequestingToken;
}

/// @nodoc
abstract class _$$GotTokenCopyWith<$Res> {
  factory _$$GotTokenCopyWith(
          _$GotToken value, $Res Function(_$GotToken) then) =
      __$$GotTokenCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$GotTokenCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$GotToken>
    implements _$$GotTokenCopyWith<$Res> {
  __$$GotTokenCopyWithImpl(_$GotToken _value, $Res Function(_$GotToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$GotToken(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GotToken implements GotToken {
  const _$GotToken({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'LoginState.gotToken(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotToken &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GotTokenCopyWith<_$GotToken> get copyWith =>
      __$$GotTokenCopyWithImpl<_$GotToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestingToken,
    required TResult Function(String token) gotToken,
    required TResult Function() requestTMDBSession,
    required TResult Function(String sessionId) gotTMDBSession,
    required TResult Function() requestingGuest,
    required TResult Function(String guestSessionId) gotGuestSession,
    required TResult Function(
            String message, AppException? exception, void Function()? onRetry)
        error,
  }) {
    return gotToken(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingToken,
    TResult? Function(String token)? gotToken,
    TResult? Function()? requestTMDBSession,
    TResult? Function(String sessionId)? gotTMDBSession,
    TResult? Function()? requestingGuest,
    TResult? Function(String guestSessionId)? gotGuestSession,
    TResult? Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
  }) {
    return gotToken?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingToken,
    TResult Function(String token)? gotToken,
    TResult Function()? requestTMDBSession,
    TResult Function(String sessionId)? gotTMDBSession,
    TResult Function()? requestingGuest,
    TResult Function(String guestSessionId)? gotGuestSession,
    TResult Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
    required TResult orElse(),
  }) {
    if (gotToken != null) {
      return gotToken(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(RequestingToken value) requestingToken,
    required TResult Function(GotToken value) gotToken,
    required TResult Function(RequestingTMDBSession value) requestTMDBSession,
    required TResult Function(GotTMDBSession value) gotTMDBSession,
    required TResult Function(RequestingGuest value) requestingGuest,
    required TResult Function(GotGuestSession value) gotGuestSession,
    required TResult Function(Error value) error,
  }) {
    return gotToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(RequestingToken value)? requestingToken,
    TResult? Function(GotToken value)? gotToken,
    TResult? Function(RequestingTMDBSession value)? requestTMDBSession,
    TResult? Function(GotTMDBSession value)? gotTMDBSession,
    TResult? Function(RequestingGuest value)? requestingGuest,
    TResult? Function(GotGuestSession value)? gotGuestSession,
    TResult? Function(Error value)? error,
  }) {
    return gotToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RequestingToken value)? requestingToken,
    TResult Function(GotToken value)? gotToken,
    TResult Function(RequestingTMDBSession value)? requestTMDBSession,
    TResult Function(GotTMDBSession value)? gotTMDBSession,
    TResult Function(RequestingGuest value)? requestingGuest,
    TResult Function(GotGuestSession value)? gotGuestSession,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (gotToken != null) {
      return gotToken(this);
    }
    return orElse();
  }
}

abstract class GotToken implements LoginState {
  const factory GotToken({required final String token}) = _$GotToken;

  String get token;
  @JsonKey(ignore: true)
  _$$GotTokenCopyWith<_$GotToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestingTMDBSessionCopyWith<$Res> {
  factory _$$RequestingTMDBSessionCopyWith(_$RequestingTMDBSession value,
          $Res Function(_$RequestingTMDBSession) then) =
      __$$RequestingTMDBSessionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestingTMDBSessionCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$RequestingTMDBSession>
    implements _$$RequestingTMDBSessionCopyWith<$Res> {
  __$$RequestingTMDBSessionCopyWithImpl(_$RequestingTMDBSession _value,
      $Res Function(_$RequestingTMDBSession) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestingTMDBSession implements RequestingTMDBSession {
  const _$RequestingTMDBSession();

  @override
  String toString() {
    return 'LoginState.requestTMDBSession()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestingTMDBSession);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestingToken,
    required TResult Function(String token) gotToken,
    required TResult Function() requestTMDBSession,
    required TResult Function(String sessionId) gotTMDBSession,
    required TResult Function() requestingGuest,
    required TResult Function(String guestSessionId) gotGuestSession,
    required TResult Function(
            String message, AppException? exception, void Function()? onRetry)
        error,
  }) {
    return requestTMDBSession();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingToken,
    TResult? Function(String token)? gotToken,
    TResult? Function()? requestTMDBSession,
    TResult? Function(String sessionId)? gotTMDBSession,
    TResult? Function()? requestingGuest,
    TResult? Function(String guestSessionId)? gotGuestSession,
    TResult? Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
  }) {
    return requestTMDBSession?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingToken,
    TResult Function(String token)? gotToken,
    TResult Function()? requestTMDBSession,
    TResult Function(String sessionId)? gotTMDBSession,
    TResult Function()? requestingGuest,
    TResult Function(String guestSessionId)? gotGuestSession,
    TResult Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
    required TResult orElse(),
  }) {
    if (requestTMDBSession != null) {
      return requestTMDBSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(RequestingToken value) requestingToken,
    required TResult Function(GotToken value) gotToken,
    required TResult Function(RequestingTMDBSession value) requestTMDBSession,
    required TResult Function(GotTMDBSession value) gotTMDBSession,
    required TResult Function(RequestingGuest value) requestingGuest,
    required TResult Function(GotGuestSession value) gotGuestSession,
    required TResult Function(Error value) error,
  }) {
    return requestTMDBSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(RequestingToken value)? requestingToken,
    TResult? Function(GotToken value)? gotToken,
    TResult? Function(RequestingTMDBSession value)? requestTMDBSession,
    TResult? Function(GotTMDBSession value)? gotTMDBSession,
    TResult? Function(RequestingGuest value)? requestingGuest,
    TResult? Function(GotGuestSession value)? gotGuestSession,
    TResult? Function(Error value)? error,
  }) {
    return requestTMDBSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RequestingToken value)? requestingToken,
    TResult Function(GotToken value)? gotToken,
    TResult Function(RequestingTMDBSession value)? requestTMDBSession,
    TResult Function(GotTMDBSession value)? gotTMDBSession,
    TResult Function(RequestingGuest value)? requestingGuest,
    TResult Function(GotGuestSession value)? gotGuestSession,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (requestTMDBSession != null) {
      return requestTMDBSession(this);
    }
    return orElse();
  }
}

abstract class RequestingTMDBSession implements LoginState {
  const factory RequestingTMDBSession() = _$RequestingTMDBSession;
}

/// @nodoc
abstract class _$$GotTMDBSessionCopyWith<$Res> {
  factory _$$GotTMDBSessionCopyWith(
          _$GotTMDBSession value, $Res Function(_$GotTMDBSession) then) =
      __$$GotTMDBSessionCopyWithImpl<$Res>;
  @useResult
  $Res call({String sessionId});
}

/// @nodoc
class __$$GotTMDBSessionCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$GotTMDBSession>
    implements _$$GotTMDBSessionCopyWith<$Res> {
  __$$GotTMDBSessionCopyWithImpl(
      _$GotTMDBSession _value, $Res Function(_$GotTMDBSession) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
  }) {
    return _then(_$GotTMDBSession(
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GotTMDBSession implements GotTMDBSession {
  const _$GotTMDBSession({required this.sessionId});

  @override
  final String sessionId;

  @override
  String toString() {
    return 'LoginState.gotTMDBSession(sessionId: $sessionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotTMDBSession &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sessionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GotTMDBSessionCopyWith<_$GotTMDBSession> get copyWith =>
      __$$GotTMDBSessionCopyWithImpl<_$GotTMDBSession>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestingToken,
    required TResult Function(String token) gotToken,
    required TResult Function() requestTMDBSession,
    required TResult Function(String sessionId) gotTMDBSession,
    required TResult Function() requestingGuest,
    required TResult Function(String guestSessionId) gotGuestSession,
    required TResult Function(
            String message, AppException? exception, void Function()? onRetry)
        error,
  }) {
    return gotTMDBSession(sessionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingToken,
    TResult? Function(String token)? gotToken,
    TResult? Function()? requestTMDBSession,
    TResult? Function(String sessionId)? gotTMDBSession,
    TResult? Function()? requestingGuest,
    TResult? Function(String guestSessionId)? gotGuestSession,
    TResult? Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
  }) {
    return gotTMDBSession?.call(sessionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingToken,
    TResult Function(String token)? gotToken,
    TResult Function()? requestTMDBSession,
    TResult Function(String sessionId)? gotTMDBSession,
    TResult Function()? requestingGuest,
    TResult Function(String guestSessionId)? gotGuestSession,
    TResult Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
    required TResult orElse(),
  }) {
    if (gotTMDBSession != null) {
      return gotTMDBSession(sessionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(RequestingToken value) requestingToken,
    required TResult Function(GotToken value) gotToken,
    required TResult Function(RequestingTMDBSession value) requestTMDBSession,
    required TResult Function(GotTMDBSession value) gotTMDBSession,
    required TResult Function(RequestingGuest value) requestingGuest,
    required TResult Function(GotGuestSession value) gotGuestSession,
    required TResult Function(Error value) error,
  }) {
    return gotTMDBSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(RequestingToken value)? requestingToken,
    TResult? Function(GotToken value)? gotToken,
    TResult? Function(RequestingTMDBSession value)? requestTMDBSession,
    TResult? Function(GotTMDBSession value)? gotTMDBSession,
    TResult? Function(RequestingGuest value)? requestingGuest,
    TResult? Function(GotGuestSession value)? gotGuestSession,
    TResult? Function(Error value)? error,
  }) {
    return gotTMDBSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RequestingToken value)? requestingToken,
    TResult Function(GotToken value)? gotToken,
    TResult Function(RequestingTMDBSession value)? requestTMDBSession,
    TResult Function(GotTMDBSession value)? gotTMDBSession,
    TResult Function(RequestingGuest value)? requestingGuest,
    TResult Function(GotGuestSession value)? gotGuestSession,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (gotTMDBSession != null) {
      return gotTMDBSession(this);
    }
    return orElse();
  }
}

abstract class GotTMDBSession implements LoginState {
  const factory GotTMDBSession({required final String sessionId}) =
      _$GotTMDBSession;

  String get sessionId;
  @JsonKey(ignore: true)
  _$$GotTMDBSessionCopyWith<_$GotTMDBSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestingGuestCopyWith<$Res> {
  factory _$$RequestingGuestCopyWith(
          _$RequestingGuest value, $Res Function(_$RequestingGuest) then) =
      __$$RequestingGuestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestingGuestCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$RequestingGuest>
    implements _$$RequestingGuestCopyWith<$Res> {
  __$$RequestingGuestCopyWithImpl(
      _$RequestingGuest _value, $Res Function(_$RequestingGuest) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestingGuest implements RequestingGuest {
  const _$RequestingGuest();

  @override
  String toString() {
    return 'LoginState.requestingGuest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestingGuest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestingToken,
    required TResult Function(String token) gotToken,
    required TResult Function() requestTMDBSession,
    required TResult Function(String sessionId) gotTMDBSession,
    required TResult Function() requestingGuest,
    required TResult Function(String guestSessionId) gotGuestSession,
    required TResult Function(
            String message, AppException? exception, void Function()? onRetry)
        error,
  }) {
    return requestingGuest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingToken,
    TResult? Function(String token)? gotToken,
    TResult? Function()? requestTMDBSession,
    TResult? Function(String sessionId)? gotTMDBSession,
    TResult? Function()? requestingGuest,
    TResult? Function(String guestSessionId)? gotGuestSession,
    TResult? Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
  }) {
    return requestingGuest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingToken,
    TResult Function(String token)? gotToken,
    TResult Function()? requestTMDBSession,
    TResult Function(String sessionId)? gotTMDBSession,
    TResult Function()? requestingGuest,
    TResult Function(String guestSessionId)? gotGuestSession,
    TResult Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
    required TResult orElse(),
  }) {
    if (requestingGuest != null) {
      return requestingGuest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(RequestingToken value) requestingToken,
    required TResult Function(GotToken value) gotToken,
    required TResult Function(RequestingTMDBSession value) requestTMDBSession,
    required TResult Function(GotTMDBSession value) gotTMDBSession,
    required TResult Function(RequestingGuest value) requestingGuest,
    required TResult Function(GotGuestSession value) gotGuestSession,
    required TResult Function(Error value) error,
  }) {
    return requestingGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(RequestingToken value)? requestingToken,
    TResult? Function(GotToken value)? gotToken,
    TResult? Function(RequestingTMDBSession value)? requestTMDBSession,
    TResult? Function(GotTMDBSession value)? gotTMDBSession,
    TResult? Function(RequestingGuest value)? requestingGuest,
    TResult? Function(GotGuestSession value)? gotGuestSession,
    TResult? Function(Error value)? error,
  }) {
    return requestingGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RequestingToken value)? requestingToken,
    TResult Function(GotToken value)? gotToken,
    TResult Function(RequestingTMDBSession value)? requestTMDBSession,
    TResult Function(GotTMDBSession value)? gotTMDBSession,
    TResult Function(RequestingGuest value)? requestingGuest,
    TResult Function(GotGuestSession value)? gotGuestSession,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (requestingGuest != null) {
      return requestingGuest(this);
    }
    return orElse();
  }
}

abstract class RequestingGuest implements LoginState {
  const factory RequestingGuest() = _$RequestingGuest;
}

/// @nodoc
abstract class _$$GotGuestSessionCopyWith<$Res> {
  factory _$$GotGuestSessionCopyWith(
          _$GotGuestSession value, $Res Function(_$GotGuestSession) then) =
      __$$GotGuestSessionCopyWithImpl<$Res>;
  @useResult
  $Res call({String guestSessionId});
}

/// @nodoc
class __$$GotGuestSessionCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$GotGuestSession>
    implements _$$GotGuestSessionCopyWith<$Res> {
  __$$GotGuestSessionCopyWithImpl(
      _$GotGuestSession _value, $Res Function(_$GotGuestSession) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guestSessionId = null,
  }) {
    return _then(_$GotGuestSession(
      guestSessionId: null == guestSessionId
          ? _value.guestSessionId
          : guestSessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GotGuestSession implements GotGuestSession {
  const _$GotGuestSession({required this.guestSessionId});

  @override
  final String guestSessionId;

  @override
  String toString() {
    return 'LoginState.gotGuestSession(guestSessionId: $guestSessionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotGuestSession &&
            (identical(other.guestSessionId, guestSessionId) ||
                other.guestSessionId == guestSessionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, guestSessionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GotGuestSessionCopyWith<_$GotGuestSession> get copyWith =>
      __$$GotGuestSessionCopyWithImpl<_$GotGuestSession>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestingToken,
    required TResult Function(String token) gotToken,
    required TResult Function() requestTMDBSession,
    required TResult Function(String sessionId) gotTMDBSession,
    required TResult Function() requestingGuest,
    required TResult Function(String guestSessionId) gotGuestSession,
    required TResult Function(
            String message, AppException? exception, void Function()? onRetry)
        error,
  }) {
    return gotGuestSession(guestSessionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingToken,
    TResult? Function(String token)? gotToken,
    TResult? Function()? requestTMDBSession,
    TResult? Function(String sessionId)? gotTMDBSession,
    TResult? Function()? requestingGuest,
    TResult? Function(String guestSessionId)? gotGuestSession,
    TResult? Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
  }) {
    return gotGuestSession?.call(guestSessionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingToken,
    TResult Function(String token)? gotToken,
    TResult Function()? requestTMDBSession,
    TResult Function(String sessionId)? gotTMDBSession,
    TResult Function()? requestingGuest,
    TResult Function(String guestSessionId)? gotGuestSession,
    TResult Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
    required TResult orElse(),
  }) {
    if (gotGuestSession != null) {
      return gotGuestSession(guestSessionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(RequestingToken value) requestingToken,
    required TResult Function(GotToken value) gotToken,
    required TResult Function(RequestingTMDBSession value) requestTMDBSession,
    required TResult Function(GotTMDBSession value) gotTMDBSession,
    required TResult Function(RequestingGuest value) requestingGuest,
    required TResult Function(GotGuestSession value) gotGuestSession,
    required TResult Function(Error value) error,
  }) {
    return gotGuestSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(RequestingToken value)? requestingToken,
    TResult? Function(GotToken value)? gotToken,
    TResult? Function(RequestingTMDBSession value)? requestTMDBSession,
    TResult? Function(GotTMDBSession value)? gotTMDBSession,
    TResult? Function(RequestingGuest value)? requestingGuest,
    TResult? Function(GotGuestSession value)? gotGuestSession,
    TResult? Function(Error value)? error,
  }) {
    return gotGuestSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RequestingToken value)? requestingToken,
    TResult Function(GotToken value)? gotToken,
    TResult Function(RequestingTMDBSession value)? requestTMDBSession,
    TResult Function(GotTMDBSession value)? gotTMDBSession,
    TResult Function(RequestingGuest value)? requestingGuest,
    TResult Function(GotGuestSession value)? gotGuestSession,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (gotGuestSession != null) {
      return gotGuestSession(this);
    }
    return orElse();
  }
}

abstract class GotGuestSession implements LoginState {
  const factory GotGuestSession({required final String guestSessionId}) =
      _$GotGuestSession;

  String get guestSessionId;
  @JsonKey(ignore: true)
  _$$GotGuestSessionCopyWith<_$GotGuestSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String message, AppException? exception, void Function()? onRetry});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? exception = freezed,
    Object? onRetry = freezed,
  }) {
    return _then(_$Error(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as AppException?,
      onRetry: freezed == onRetry
          ? _value.onRetry
          : onRetry // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({this.message = '', this.exception, this.onRetry});

  @override
  @JsonKey()
  final String message;
  @override
  final AppException? exception;
  @override
  final void Function()? onRetry;

  @override
  String toString() {
    return 'LoginState.error(message: $message, exception: $exception, onRetry: $onRetry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.onRetry, onRetry) || other.onRetry == onRetry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, exception, onRetry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestingToken,
    required TResult Function(String token) gotToken,
    required TResult Function() requestTMDBSession,
    required TResult Function(String sessionId) gotTMDBSession,
    required TResult Function() requestingGuest,
    required TResult Function(String guestSessionId) gotGuestSession,
    required TResult Function(
            String message, AppException? exception, void Function()? onRetry)
        error,
  }) {
    return error(message, exception, onRetry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingToken,
    TResult? Function(String token)? gotToken,
    TResult? Function()? requestTMDBSession,
    TResult? Function(String sessionId)? gotTMDBSession,
    TResult? Function()? requestingGuest,
    TResult? Function(String guestSessionId)? gotGuestSession,
    TResult? Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
  }) {
    return error?.call(message, exception, onRetry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingToken,
    TResult Function(String token)? gotToken,
    TResult Function()? requestTMDBSession,
    TResult Function(String sessionId)? gotTMDBSession,
    TResult Function()? requestingGuest,
    TResult Function(String guestSessionId)? gotGuestSession,
    TResult Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, exception, onRetry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(RequestingToken value) requestingToken,
    required TResult Function(GotToken value) gotToken,
    required TResult Function(RequestingTMDBSession value) requestTMDBSession,
    required TResult Function(GotTMDBSession value) gotTMDBSession,
    required TResult Function(RequestingGuest value) requestingGuest,
    required TResult Function(GotGuestSession value) gotGuestSession,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(RequestingToken value)? requestingToken,
    TResult? Function(GotToken value)? gotToken,
    TResult? Function(RequestingTMDBSession value)? requestTMDBSession,
    TResult? Function(GotTMDBSession value)? gotTMDBSession,
    TResult? Function(RequestingGuest value)? requestingGuest,
    TResult? Function(GotGuestSession value)? gotGuestSession,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RequestingToken value)? requestingToken,
    TResult Function(GotToken value)? gotToken,
    TResult Function(RequestingTMDBSession value)? requestTMDBSession,
    TResult Function(GotTMDBSession value)? gotTMDBSession,
    TResult Function(RequestingGuest value)? requestingGuest,
    TResult Function(GotGuestSession value)? gotGuestSession,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements LoginState {
  const factory Error(
      {final String message,
      final AppException? exception,
      final void Function()? onRetry}) = _$Error;

  String get message;
  AppException? get exception;
  void Function()? get onRetry;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}
