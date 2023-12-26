// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String sessionId) authenticated,
    required TResult Function(String guestSessionId, String expiresAt) guest,
    required TResult Function(String message, AppException? exception) error,
    required TResult Function() notLogIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String sessionId)? authenticated,
    TResult? Function(String guestSessionId, String expiresAt)? guest,
    TResult? Function(String message, AppException? exception)? error,
    TResult? Function()? notLogIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String sessionId)? authenticated,
    TResult Function(String guestSessionId, String expiresAt)? guest,
    TResult Function(String message, AppException? exception)? error,
    TResult Function()? notLogIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppAuthLoading value) loading,
    required TResult Function(AppAuthAuthenticated value) authenticated,
    required TResult Function(AppAuthGuest value) guest,
    required TResult Function(AppAuthError value) error,
    required TResult Function(AppAuthNotLogIn value) notLogIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppAuthLoading value)? loading,
    TResult? Function(AppAuthAuthenticated value)? authenticated,
    TResult? Function(AppAuthGuest value)? guest,
    TResult? Function(AppAuthError value)? error,
    TResult? Function(AppAuthNotLogIn value)? notLogIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppAuthLoading value)? loading,
    TResult Function(AppAuthAuthenticated value)? authenticated,
    TResult Function(AppAuthGuest value)? guest,
    TResult Function(AppAuthError value)? error,
    TResult Function(AppAuthNotLogIn value)? notLogIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppAuthStateCopyWith<$Res> {
  factory $AppAuthStateCopyWith(
          AppAuthState value, $Res Function(AppAuthState) then) =
      _$AppAuthStateCopyWithImpl<$Res, AppAuthState>;
}

/// @nodoc
class _$AppAuthStateCopyWithImpl<$Res, $Val extends AppAuthState>
    implements $AppAuthStateCopyWith<$Res> {
  _$AppAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppAuthLoadingCopyWith<$Res> {
  factory _$$AppAuthLoadingCopyWith(
          _$AppAuthLoading value, $Res Function(_$AppAuthLoading) then) =
      __$$AppAuthLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppAuthLoadingCopyWithImpl<$Res>
    extends _$AppAuthStateCopyWithImpl<$Res, _$AppAuthLoading>
    implements _$$AppAuthLoadingCopyWith<$Res> {
  __$$AppAuthLoadingCopyWithImpl(
      _$AppAuthLoading _value, $Res Function(_$AppAuthLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppAuthLoading implements AppAuthLoading {
  const _$AppAuthLoading();

  @override
  String toString() {
    return 'AppAuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppAuthLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String sessionId) authenticated,
    required TResult Function(String guestSessionId, String expiresAt) guest,
    required TResult Function(String message, AppException? exception) error,
    required TResult Function() notLogIn,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String sessionId)? authenticated,
    TResult? Function(String guestSessionId, String expiresAt)? guest,
    TResult? Function(String message, AppException? exception)? error,
    TResult? Function()? notLogIn,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String sessionId)? authenticated,
    TResult Function(String guestSessionId, String expiresAt)? guest,
    TResult Function(String message, AppException? exception)? error,
    TResult Function()? notLogIn,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppAuthLoading value) loading,
    required TResult Function(AppAuthAuthenticated value) authenticated,
    required TResult Function(AppAuthGuest value) guest,
    required TResult Function(AppAuthError value) error,
    required TResult Function(AppAuthNotLogIn value) notLogIn,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppAuthLoading value)? loading,
    TResult? Function(AppAuthAuthenticated value)? authenticated,
    TResult? Function(AppAuthGuest value)? guest,
    TResult? Function(AppAuthError value)? error,
    TResult? Function(AppAuthNotLogIn value)? notLogIn,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppAuthLoading value)? loading,
    TResult Function(AppAuthAuthenticated value)? authenticated,
    TResult Function(AppAuthGuest value)? guest,
    TResult Function(AppAuthError value)? error,
    TResult Function(AppAuthNotLogIn value)? notLogIn,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AppAuthLoading implements AppAuthState {
  const factory AppAuthLoading() = _$AppAuthLoading;
}

/// @nodoc
abstract class _$$AppAuthAuthenticatedCopyWith<$Res> {
  factory _$$AppAuthAuthenticatedCopyWith(_$AppAuthAuthenticated value,
          $Res Function(_$AppAuthAuthenticated) then) =
      __$$AppAuthAuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({String sessionId});
}

/// @nodoc
class __$$AppAuthAuthenticatedCopyWithImpl<$Res>
    extends _$AppAuthStateCopyWithImpl<$Res, _$AppAuthAuthenticated>
    implements _$$AppAuthAuthenticatedCopyWith<$Res> {
  __$$AppAuthAuthenticatedCopyWithImpl(_$AppAuthAuthenticated _value,
      $Res Function(_$AppAuthAuthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
  }) {
    return _then(_$AppAuthAuthenticated(
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppAuthAuthenticated implements AppAuthAuthenticated {
  const _$AppAuthAuthenticated({required this.sessionId});

  @override
  final String sessionId;

  @override
  String toString() {
    return 'AppAuthState.authenticated(sessionId: $sessionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppAuthAuthenticated &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sessionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppAuthAuthenticatedCopyWith<_$AppAuthAuthenticated> get copyWith =>
      __$$AppAuthAuthenticatedCopyWithImpl<_$AppAuthAuthenticated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String sessionId) authenticated,
    required TResult Function(String guestSessionId, String expiresAt) guest,
    required TResult Function(String message, AppException? exception) error,
    required TResult Function() notLogIn,
  }) {
    return authenticated(sessionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String sessionId)? authenticated,
    TResult? Function(String guestSessionId, String expiresAt)? guest,
    TResult? Function(String message, AppException? exception)? error,
    TResult? Function()? notLogIn,
  }) {
    return authenticated?.call(sessionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String sessionId)? authenticated,
    TResult Function(String guestSessionId, String expiresAt)? guest,
    TResult Function(String message, AppException? exception)? error,
    TResult Function()? notLogIn,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(sessionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppAuthLoading value) loading,
    required TResult Function(AppAuthAuthenticated value) authenticated,
    required TResult Function(AppAuthGuest value) guest,
    required TResult Function(AppAuthError value) error,
    required TResult Function(AppAuthNotLogIn value) notLogIn,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppAuthLoading value)? loading,
    TResult? Function(AppAuthAuthenticated value)? authenticated,
    TResult? Function(AppAuthGuest value)? guest,
    TResult? Function(AppAuthError value)? error,
    TResult? Function(AppAuthNotLogIn value)? notLogIn,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppAuthLoading value)? loading,
    TResult Function(AppAuthAuthenticated value)? authenticated,
    TResult Function(AppAuthGuest value)? guest,
    TResult Function(AppAuthError value)? error,
    TResult Function(AppAuthNotLogIn value)? notLogIn,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AppAuthAuthenticated implements AppAuthState {
  const factory AppAuthAuthenticated({required final String sessionId}) =
      _$AppAuthAuthenticated;

  String get sessionId;
  @JsonKey(ignore: true)
  _$$AppAuthAuthenticatedCopyWith<_$AppAuthAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppAuthGuestCopyWith<$Res> {
  factory _$$AppAuthGuestCopyWith(
          _$AppAuthGuest value, $Res Function(_$AppAuthGuest) then) =
      __$$AppAuthGuestCopyWithImpl<$Res>;
  @useResult
  $Res call({String guestSessionId, String expiresAt});
}

/// @nodoc
class __$$AppAuthGuestCopyWithImpl<$Res>
    extends _$AppAuthStateCopyWithImpl<$Res, _$AppAuthGuest>
    implements _$$AppAuthGuestCopyWith<$Res> {
  __$$AppAuthGuestCopyWithImpl(
      _$AppAuthGuest _value, $Res Function(_$AppAuthGuest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guestSessionId = null,
    Object? expiresAt = null,
  }) {
    return _then(_$AppAuthGuest(
      guestSessionId: null == guestSessionId
          ? _value.guestSessionId
          : guestSessionId // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppAuthGuest implements AppAuthGuest {
  const _$AppAuthGuest({required this.guestSessionId, required this.expiresAt});

  @override
  final String guestSessionId;
  @override
  final String expiresAt;

  @override
  String toString() {
    return 'AppAuthState.guest(guestSessionId: $guestSessionId, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppAuthGuest &&
            (identical(other.guestSessionId, guestSessionId) ||
                other.guestSessionId == guestSessionId) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, guestSessionId, expiresAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppAuthGuestCopyWith<_$AppAuthGuest> get copyWith =>
      __$$AppAuthGuestCopyWithImpl<_$AppAuthGuest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String sessionId) authenticated,
    required TResult Function(String guestSessionId, String expiresAt) guest,
    required TResult Function(String message, AppException? exception) error,
    required TResult Function() notLogIn,
  }) {
    return guest(guestSessionId, expiresAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String sessionId)? authenticated,
    TResult? Function(String guestSessionId, String expiresAt)? guest,
    TResult? Function(String message, AppException? exception)? error,
    TResult? Function()? notLogIn,
  }) {
    return guest?.call(guestSessionId, expiresAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String sessionId)? authenticated,
    TResult Function(String guestSessionId, String expiresAt)? guest,
    TResult Function(String message, AppException? exception)? error,
    TResult Function()? notLogIn,
    required TResult orElse(),
  }) {
    if (guest != null) {
      return guest(guestSessionId, expiresAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppAuthLoading value) loading,
    required TResult Function(AppAuthAuthenticated value) authenticated,
    required TResult Function(AppAuthGuest value) guest,
    required TResult Function(AppAuthError value) error,
    required TResult Function(AppAuthNotLogIn value) notLogIn,
  }) {
    return guest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppAuthLoading value)? loading,
    TResult? Function(AppAuthAuthenticated value)? authenticated,
    TResult? Function(AppAuthGuest value)? guest,
    TResult? Function(AppAuthError value)? error,
    TResult? Function(AppAuthNotLogIn value)? notLogIn,
  }) {
    return guest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppAuthLoading value)? loading,
    TResult Function(AppAuthAuthenticated value)? authenticated,
    TResult Function(AppAuthGuest value)? guest,
    TResult Function(AppAuthError value)? error,
    TResult Function(AppAuthNotLogIn value)? notLogIn,
    required TResult orElse(),
  }) {
    if (guest != null) {
      return guest(this);
    }
    return orElse();
  }
}

abstract class AppAuthGuest implements AppAuthState {
  const factory AppAuthGuest(
      {required final String guestSessionId,
      required final String expiresAt}) = _$AppAuthGuest;

  String get guestSessionId;
  String get expiresAt;
  @JsonKey(ignore: true)
  _$$AppAuthGuestCopyWith<_$AppAuthGuest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppAuthErrorCopyWith<$Res> {
  factory _$$AppAuthErrorCopyWith(
          _$AppAuthError value, $Res Function(_$AppAuthError) then) =
      __$$AppAuthErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, AppException? exception});
}

/// @nodoc
class __$$AppAuthErrorCopyWithImpl<$Res>
    extends _$AppAuthStateCopyWithImpl<$Res, _$AppAuthError>
    implements _$$AppAuthErrorCopyWith<$Res> {
  __$$AppAuthErrorCopyWithImpl(
      _$AppAuthError _value, $Res Function(_$AppAuthError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? exception = freezed,
  }) {
    return _then(_$AppAuthError(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as AppException?,
    ));
  }
}

/// @nodoc

class _$AppAuthError implements AppAuthError {
  const _$AppAuthError({this.message = '', this.exception});

  @override
  @JsonKey()
  final String message;
  @override
  final AppException? exception;

  @override
  String toString() {
    return 'AppAuthState.error(message: $message, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppAuthError &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppAuthErrorCopyWith<_$AppAuthError> get copyWith =>
      __$$AppAuthErrorCopyWithImpl<_$AppAuthError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String sessionId) authenticated,
    required TResult Function(String guestSessionId, String expiresAt) guest,
    required TResult Function(String message, AppException? exception) error,
    required TResult Function() notLogIn,
  }) {
    return error(message, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String sessionId)? authenticated,
    TResult? Function(String guestSessionId, String expiresAt)? guest,
    TResult? Function(String message, AppException? exception)? error,
    TResult? Function()? notLogIn,
  }) {
    return error?.call(message, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String sessionId)? authenticated,
    TResult Function(String guestSessionId, String expiresAt)? guest,
    TResult Function(String message, AppException? exception)? error,
    TResult Function()? notLogIn,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppAuthLoading value) loading,
    required TResult Function(AppAuthAuthenticated value) authenticated,
    required TResult Function(AppAuthGuest value) guest,
    required TResult Function(AppAuthError value) error,
    required TResult Function(AppAuthNotLogIn value) notLogIn,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppAuthLoading value)? loading,
    TResult? Function(AppAuthAuthenticated value)? authenticated,
    TResult? Function(AppAuthGuest value)? guest,
    TResult? Function(AppAuthError value)? error,
    TResult? Function(AppAuthNotLogIn value)? notLogIn,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppAuthLoading value)? loading,
    TResult Function(AppAuthAuthenticated value)? authenticated,
    TResult Function(AppAuthGuest value)? guest,
    TResult Function(AppAuthError value)? error,
    TResult Function(AppAuthNotLogIn value)? notLogIn,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AppAuthError implements AppAuthState {
  const factory AppAuthError(
      {final String message, final AppException? exception}) = _$AppAuthError;

  String get message;
  AppException? get exception;
  @JsonKey(ignore: true)
  _$$AppAuthErrorCopyWith<_$AppAuthError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppAuthNotLogInCopyWith<$Res> {
  factory _$$AppAuthNotLogInCopyWith(
          _$AppAuthNotLogIn value, $Res Function(_$AppAuthNotLogIn) then) =
      __$$AppAuthNotLogInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppAuthNotLogInCopyWithImpl<$Res>
    extends _$AppAuthStateCopyWithImpl<$Res, _$AppAuthNotLogIn>
    implements _$$AppAuthNotLogInCopyWith<$Res> {
  __$$AppAuthNotLogInCopyWithImpl(
      _$AppAuthNotLogIn _value, $Res Function(_$AppAuthNotLogIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppAuthNotLogIn implements AppAuthNotLogIn {
  const _$AppAuthNotLogIn();

  @override
  String toString() {
    return 'AppAuthState.notLogIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppAuthNotLogIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String sessionId) authenticated,
    required TResult Function(String guestSessionId, String expiresAt) guest,
    required TResult Function(String message, AppException? exception) error,
    required TResult Function() notLogIn,
  }) {
    return notLogIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String sessionId)? authenticated,
    TResult? Function(String guestSessionId, String expiresAt)? guest,
    TResult? Function(String message, AppException? exception)? error,
    TResult? Function()? notLogIn,
  }) {
    return notLogIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String sessionId)? authenticated,
    TResult Function(String guestSessionId, String expiresAt)? guest,
    TResult Function(String message, AppException? exception)? error,
    TResult Function()? notLogIn,
    required TResult orElse(),
  }) {
    if (notLogIn != null) {
      return notLogIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppAuthLoading value) loading,
    required TResult Function(AppAuthAuthenticated value) authenticated,
    required TResult Function(AppAuthGuest value) guest,
    required TResult Function(AppAuthError value) error,
    required TResult Function(AppAuthNotLogIn value) notLogIn,
  }) {
    return notLogIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppAuthLoading value)? loading,
    TResult? Function(AppAuthAuthenticated value)? authenticated,
    TResult? Function(AppAuthGuest value)? guest,
    TResult? Function(AppAuthError value)? error,
    TResult? Function(AppAuthNotLogIn value)? notLogIn,
  }) {
    return notLogIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppAuthLoading value)? loading,
    TResult Function(AppAuthAuthenticated value)? authenticated,
    TResult Function(AppAuthGuest value)? guest,
    TResult Function(AppAuthError value)? error,
    TResult Function(AppAuthNotLogIn value)? notLogIn,
    required TResult orElse(),
  }) {
    if (notLogIn != null) {
      return notLogIn(this);
    }
    return orElse();
  }
}

abstract class AppAuthNotLogIn implements AppAuthState {
  const factory AppAuthNotLogIn() = _$AppAuthNotLogIn;
}
