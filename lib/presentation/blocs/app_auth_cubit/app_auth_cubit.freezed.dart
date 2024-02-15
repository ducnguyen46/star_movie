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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$AppAuthLoadingImplCopyWith<$Res> {
  factory _$$AppAuthLoadingImplCopyWith(_$AppAuthLoadingImpl value,
          $Res Function(_$AppAuthLoadingImpl) then) =
      __$$AppAuthLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppAuthLoadingImplCopyWithImpl<$Res>
    extends _$AppAuthStateCopyWithImpl<$Res, _$AppAuthLoadingImpl>
    implements _$$AppAuthLoadingImplCopyWith<$Res> {
  __$$AppAuthLoadingImplCopyWithImpl(
      _$AppAuthLoadingImpl _value, $Res Function(_$AppAuthLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppAuthLoadingImpl implements AppAuthLoading {
  const _$AppAuthLoadingImpl();

  @override
  String toString() {
    return 'AppAuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppAuthLoadingImpl);
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
  const factory AppAuthLoading() = _$AppAuthLoadingImpl;
}

/// @nodoc
abstract class _$$AppAuthAuthenticatedImplCopyWith<$Res> {
  factory _$$AppAuthAuthenticatedImplCopyWith(_$AppAuthAuthenticatedImpl value,
          $Res Function(_$AppAuthAuthenticatedImpl) then) =
      __$$AppAuthAuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String sessionId});
}

/// @nodoc
class __$$AppAuthAuthenticatedImplCopyWithImpl<$Res>
    extends _$AppAuthStateCopyWithImpl<$Res, _$AppAuthAuthenticatedImpl>
    implements _$$AppAuthAuthenticatedImplCopyWith<$Res> {
  __$$AppAuthAuthenticatedImplCopyWithImpl(_$AppAuthAuthenticatedImpl _value,
      $Res Function(_$AppAuthAuthenticatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
  }) {
    return _then(_$AppAuthAuthenticatedImpl(
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppAuthAuthenticatedImpl implements AppAuthAuthenticated {
  const _$AppAuthAuthenticatedImpl({required this.sessionId});

  @override
  final String sessionId;

  @override
  String toString() {
    return 'AppAuthState.authenticated(sessionId: $sessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppAuthAuthenticatedImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sessionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppAuthAuthenticatedImplCopyWith<_$AppAuthAuthenticatedImpl>
      get copyWith =>
          __$$AppAuthAuthenticatedImplCopyWithImpl<_$AppAuthAuthenticatedImpl>(
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
      _$AppAuthAuthenticatedImpl;

  String get sessionId;
  @JsonKey(ignore: true)
  _$$AppAuthAuthenticatedImplCopyWith<_$AppAuthAuthenticatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppAuthGuestImplCopyWith<$Res> {
  factory _$$AppAuthGuestImplCopyWith(
          _$AppAuthGuestImpl value, $Res Function(_$AppAuthGuestImpl) then) =
      __$$AppAuthGuestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String guestSessionId, String expiresAt});
}

/// @nodoc
class __$$AppAuthGuestImplCopyWithImpl<$Res>
    extends _$AppAuthStateCopyWithImpl<$Res, _$AppAuthGuestImpl>
    implements _$$AppAuthGuestImplCopyWith<$Res> {
  __$$AppAuthGuestImplCopyWithImpl(
      _$AppAuthGuestImpl _value, $Res Function(_$AppAuthGuestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guestSessionId = null,
    Object? expiresAt = null,
  }) {
    return _then(_$AppAuthGuestImpl(
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

class _$AppAuthGuestImpl implements AppAuthGuest {
  const _$AppAuthGuestImpl(
      {required this.guestSessionId, required this.expiresAt});

  @override
  final String guestSessionId;
  @override
  final String expiresAt;

  @override
  String toString() {
    return 'AppAuthState.guest(guestSessionId: $guestSessionId, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppAuthGuestImpl &&
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
  _$$AppAuthGuestImplCopyWith<_$AppAuthGuestImpl> get copyWith =>
      __$$AppAuthGuestImplCopyWithImpl<_$AppAuthGuestImpl>(this, _$identity);

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
      required final String expiresAt}) = _$AppAuthGuestImpl;

  String get guestSessionId;
  String get expiresAt;
  @JsonKey(ignore: true)
  _$$AppAuthGuestImplCopyWith<_$AppAuthGuestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppAuthErrorImplCopyWith<$Res> {
  factory _$$AppAuthErrorImplCopyWith(
          _$AppAuthErrorImpl value, $Res Function(_$AppAuthErrorImpl) then) =
      __$$AppAuthErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, AppException? exception});
}

/// @nodoc
class __$$AppAuthErrorImplCopyWithImpl<$Res>
    extends _$AppAuthStateCopyWithImpl<$Res, _$AppAuthErrorImpl>
    implements _$$AppAuthErrorImplCopyWith<$Res> {
  __$$AppAuthErrorImplCopyWithImpl(
      _$AppAuthErrorImpl _value, $Res Function(_$AppAuthErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? exception = freezed,
  }) {
    return _then(_$AppAuthErrorImpl(
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

class _$AppAuthErrorImpl implements AppAuthError {
  const _$AppAuthErrorImpl({this.message = '', this.exception});

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppAuthErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppAuthErrorImplCopyWith<_$AppAuthErrorImpl> get copyWith =>
      __$$AppAuthErrorImplCopyWithImpl<_$AppAuthErrorImpl>(this, _$identity);

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
      {final String message,
      final AppException? exception}) = _$AppAuthErrorImpl;

  String get message;
  AppException? get exception;
  @JsonKey(ignore: true)
  _$$AppAuthErrorImplCopyWith<_$AppAuthErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppAuthNotLogInImplCopyWith<$Res> {
  factory _$$AppAuthNotLogInImplCopyWith(_$AppAuthNotLogInImpl value,
          $Res Function(_$AppAuthNotLogInImpl) then) =
      __$$AppAuthNotLogInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppAuthNotLogInImplCopyWithImpl<$Res>
    extends _$AppAuthStateCopyWithImpl<$Res, _$AppAuthNotLogInImpl>
    implements _$$AppAuthNotLogInImplCopyWith<$Res> {
  __$$AppAuthNotLogInImplCopyWithImpl(
      _$AppAuthNotLogInImpl _value, $Res Function(_$AppAuthNotLogInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppAuthNotLogInImpl implements AppAuthNotLogIn {
  const _$AppAuthNotLogInImpl();

  @override
  String toString() {
    return 'AppAuthState.notLogIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppAuthNotLogInImpl);
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
  const factory AppAuthNotLogIn() = _$AppAuthNotLogInImpl;
}
