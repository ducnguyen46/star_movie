// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticated_user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticatedUserData _$AuthenticatedUserDataFromJson(
    Map<String, dynamic> json) {
  return _AuthenticatedUserData.fromJson(json);
}

/// @nodoc
mixin _$AuthenticatedUserData {
  bool get isAuthenticatedUser => throw _privateConstructorUsedError;
  String get sessionId => throw _privateConstructorUsedError;
  String get guestSessionId => throw _privateConstructorUsedError;
  String get expiresAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticatedUserDataCopyWith<AuthenticatedUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatedUserDataCopyWith<$Res> {
  factory $AuthenticatedUserDataCopyWith(AuthenticatedUserData value,
          $Res Function(AuthenticatedUserData) then) =
      _$AuthenticatedUserDataCopyWithImpl<$Res, AuthenticatedUserData>;
  @useResult
  $Res call(
      {bool isAuthenticatedUser,
      String sessionId,
      String guestSessionId,
      String expiresAt});
}

/// @nodoc
class _$AuthenticatedUserDataCopyWithImpl<$Res,
        $Val extends AuthenticatedUserData>
    implements $AuthenticatedUserDataCopyWith<$Res> {
  _$AuthenticatedUserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuthenticatedUser = null,
    Object? sessionId = null,
    Object? guestSessionId = null,
    Object? expiresAt = null,
  }) {
    return _then(_value.copyWith(
      isAuthenticatedUser: null == isAuthenticatedUser
          ? _value.isAuthenticatedUser
          : isAuthenticatedUser // ignore: cast_nullable_to_non_nullable
              as bool,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      guestSessionId: null == guestSessionId
          ? _value.guestSessionId
          : guestSessionId // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthenticatedUserDataCopyWith<$Res>
    implements $AuthenticatedUserDataCopyWith<$Res> {
  factory _$$_AuthenticatedUserDataCopyWith(_$_AuthenticatedUserData value,
          $Res Function(_$_AuthenticatedUserData) then) =
      __$$_AuthenticatedUserDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isAuthenticatedUser,
      String sessionId,
      String guestSessionId,
      String expiresAt});
}

/// @nodoc
class __$$_AuthenticatedUserDataCopyWithImpl<$Res>
    extends _$AuthenticatedUserDataCopyWithImpl<$Res, _$_AuthenticatedUserData>
    implements _$$_AuthenticatedUserDataCopyWith<$Res> {
  __$$_AuthenticatedUserDataCopyWithImpl(_$_AuthenticatedUserData _value,
      $Res Function(_$_AuthenticatedUserData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuthenticatedUser = null,
    Object? sessionId = null,
    Object? guestSessionId = null,
    Object? expiresAt = null,
  }) {
    return _then(_$_AuthenticatedUserData(
      isAuthenticatedUser: null == isAuthenticatedUser
          ? _value.isAuthenticatedUser
          : isAuthenticatedUser // ignore: cast_nullable_to_non_nullable
              as bool,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
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
@JsonSerializable()
class _$_AuthenticatedUserData implements _AuthenticatedUserData {
  const _$_AuthenticatedUserData(
      {this.isAuthenticatedUser = false,
      this.sessionId = '',
      this.guestSessionId = '',
      this.expiresAt = ''});

  factory _$_AuthenticatedUserData.fromJson(Map<String, dynamic> json) =>
      _$$_AuthenticatedUserDataFromJson(json);

  @override
  @JsonKey()
  final bool isAuthenticatedUser;
  @override
  @JsonKey()
  final String sessionId;
  @override
  @JsonKey()
  final String guestSessionId;
  @override
  @JsonKey()
  final String expiresAt;

  @override
  String toString() {
    return 'AuthenticatedUserData(isAuthenticatedUser: $isAuthenticatedUser, sessionId: $sessionId, guestSessionId: $guestSessionId, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticatedUserData &&
            (identical(other.isAuthenticatedUser, isAuthenticatedUser) ||
                other.isAuthenticatedUser == isAuthenticatedUser) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.guestSessionId, guestSessionId) ||
                other.guestSessionId == guestSessionId) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, isAuthenticatedUser, sessionId, guestSessionId, expiresAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticatedUserDataCopyWith<_$_AuthenticatedUserData> get copyWith =>
      __$$_AuthenticatedUserDataCopyWithImpl<_$_AuthenticatedUserData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticatedUserDataToJson(
      this,
    );
  }
}

abstract class _AuthenticatedUserData implements AuthenticatedUserData {
  const factory _AuthenticatedUserData(
      {final bool isAuthenticatedUser,
      final String sessionId,
      final String guestSessionId,
      final String expiresAt}) = _$_AuthenticatedUserData;

  factory _AuthenticatedUserData.fromJson(Map<String, dynamic> json) =
      _$_AuthenticatedUserData.fromJson;

  @override
  bool get isAuthenticatedUser;
  @override
  String get sessionId;
  @override
  String get guestSessionId;
  @override
  String get expiresAt;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticatedUserDataCopyWith<_$_AuthenticatedUserData> get copyWith =>
      throw _privateConstructorUsedError;
}
