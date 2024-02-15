// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticated_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthenticatedUserModel _$AuthenticatedUserModelFromJson(
    Map<String, dynamic> json) {
  return _AuthenticatedUserModel.fromJson(json);
}

/// @nodoc
mixin _$AuthenticatedUserModel {
  @JsonKey(name: 'is_authenticated')
  bool get isAuthenticatedUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'session_id')
  String get sessionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'guest_session_id')
  String get guestSessionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_at')
  String get expiresAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticatedUserModelCopyWith<AuthenticatedUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatedUserModelCopyWith<$Res> {
  factory $AuthenticatedUserModelCopyWith(AuthenticatedUserModel value,
          $Res Function(AuthenticatedUserModel) then) =
      _$AuthenticatedUserModelCopyWithImpl<$Res, AuthenticatedUserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_authenticated') bool isAuthenticatedUser,
      @JsonKey(name: 'session_id') String sessionId,
      @JsonKey(name: 'guest_session_id') String guestSessionId,
      @JsonKey(name: 'expires_at') String expiresAt});
}

/// @nodoc
class _$AuthenticatedUserModelCopyWithImpl<$Res,
        $Val extends AuthenticatedUserModel>
    implements $AuthenticatedUserModelCopyWith<$Res> {
  _$AuthenticatedUserModelCopyWithImpl(this._value, this._then);

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
abstract class _$$AuthenticatedUserModelImplCopyWith<$Res>
    implements $AuthenticatedUserModelCopyWith<$Res> {
  factory _$$AuthenticatedUserModelImplCopyWith(
          _$AuthenticatedUserModelImpl value,
          $Res Function(_$AuthenticatedUserModelImpl) then) =
      __$$AuthenticatedUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_authenticated') bool isAuthenticatedUser,
      @JsonKey(name: 'session_id') String sessionId,
      @JsonKey(name: 'guest_session_id') String guestSessionId,
      @JsonKey(name: 'expires_at') String expiresAt});
}

/// @nodoc
class __$$AuthenticatedUserModelImplCopyWithImpl<$Res>
    extends _$AuthenticatedUserModelCopyWithImpl<$Res,
        _$AuthenticatedUserModelImpl>
    implements _$$AuthenticatedUserModelImplCopyWith<$Res> {
  __$$AuthenticatedUserModelImplCopyWithImpl(
      _$AuthenticatedUserModelImpl _value,
      $Res Function(_$AuthenticatedUserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuthenticatedUser = null,
    Object? sessionId = null,
    Object? guestSessionId = null,
    Object? expiresAt = null,
  }) {
    return _then(_$AuthenticatedUserModelImpl(
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
class _$AuthenticatedUserModelImpl implements _AuthenticatedUserModel {
  const _$AuthenticatedUserModelImpl(
      {@JsonKey(name: 'is_authenticated') this.isAuthenticatedUser = false,
      @JsonKey(name: 'session_id') this.sessionId = '',
      @JsonKey(name: 'guest_session_id') this.guestSessionId = '',
      @JsonKey(name: 'expires_at') this.expiresAt = ''});

  factory _$AuthenticatedUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticatedUserModelImplFromJson(json);

  @override
  @JsonKey(name: 'is_authenticated')
  final bool isAuthenticatedUser;
  @override
  @JsonKey(name: 'session_id')
  final String sessionId;
  @override
  @JsonKey(name: 'guest_session_id')
  final String guestSessionId;
  @override
  @JsonKey(name: 'expires_at')
  final String expiresAt;

  @override
  String toString() {
    return 'AuthenticatedUserModel(isAuthenticatedUser: $isAuthenticatedUser, sessionId: $sessionId, guestSessionId: $guestSessionId, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedUserModelImpl &&
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
  _$$AuthenticatedUserModelImplCopyWith<_$AuthenticatedUserModelImpl>
      get copyWith => __$$AuthenticatedUserModelImplCopyWithImpl<
          _$AuthenticatedUserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticatedUserModelImplToJson(
      this,
    );
  }
}

abstract class _AuthenticatedUserModel implements AuthenticatedUserModel {
  const factory _AuthenticatedUserModel(
          {@JsonKey(name: 'is_authenticated') final bool isAuthenticatedUser,
          @JsonKey(name: 'session_id') final String sessionId,
          @JsonKey(name: 'guest_session_id') final String guestSessionId,
          @JsonKey(name: 'expires_at') final String expiresAt}) =
      _$AuthenticatedUserModelImpl;

  factory _AuthenticatedUserModel.fromJson(Map<String, dynamic> json) =
      _$AuthenticatedUserModelImpl.fromJson;

  @override
  @JsonKey(name: 'is_authenticated')
  bool get isAuthenticatedUser;
  @override
  @JsonKey(name: 'session_id')
  String get sessionId;
  @override
  @JsonKey(name: 'guest_session_id')
  String get guestSessionId;
  @override
  @JsonKey(name: 'expires_at')
  String get expiresAt;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticatedUserModelImplCopyWith<_$AuthenticatedUserModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
