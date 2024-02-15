// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest_session_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GuestSessionResponseModel _$GuestSessionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GuestSessionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GuestSessionResponseModel {
  @JsonKey(name: 'guest_session_id')
  String get guestSessionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_at')
  String get expiresAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuestSessionResponseModelCopyWith<GuestSessionResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestSessionResponseModelCopyWith<$Res> {
  factory $GuestSessionResponseModelCopyWith(GuestSessionResponseModel value,
          $Res Function(GuestSessionResponseModel) then) =
      _$GuestSessionResponseModelCopyWithImpl<$Res, GuestSessionResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'guest_session_id') String guestSessionId,
      @JsonKey(name: 'expires_at') String expiresAt});
}

/// @nodoc
class _$GuestSessionResponseModelCopyWithImpl<$Res,
        $Val extends GuestSessionResponseModel>
    implements $GuestSessionResponseModelCopyWith<$Res> {
  _$GuestSessionResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guestSessionId = null,
    Object? expiresAt = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$GuestSessionResponseModelImplCopyWith<$Res>
    implements $GuestSessionResponseModelCopyWith<$Res> {
  factory _$$GuestSessionResponseModelImplCopyWith(
          _$GuestSessionResponseModelImpl value,
          $Res Function(_$GuestSessionResponseModelImpl) then) =
      __$$GuestSessionResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'guest_session_id') String guestSessionId,
      @JsonKey(name: 'expires_at') String expiresAt});
}

/// @nodoc
class __$$GuestSessionResponseModelImplCopyWithImpl<$Res>
    extends _$GuestSessionResponseModelCopyWithImpl<$Res,
        _$GuestSessionResponseModelImpl>
    implements _$$GuestSessionResponseModelImplCopyWith<$Res> {
  __$$GuestSessionResponseModelImplCopyWithImpl(
      _$GuestSessionResponseModelImpl _value,
      $Res Function(_$GuestSessionResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guestSessionId = null,
    Object? expiresAt = null,
  }) {
    return _then(_$GuestSessionResponseModelImpl(
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
class _$GuestSessionResponseModelImpl implements _GuestSessionResponseModel {
  const _$GuestSessionResponseModelImpl(
      {@JsonKey(name: 'guest_session_id') this.guestSessionId = '',
      @JsonKey(name: 'expires_at') this.expiresAt = ''});

  factory _$GuestSessionResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuestSessionResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'guest_session_id')
  final String guestSessionId;
  @override
  @JsonKey(name: 'expires_at')
  final String expiresAt;

  @override
  String toString() {
    return 'GuestSessionResponseModel(guestSessionId: $guestSessionId, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuestSessionResponseModelImpl &&
            (identical(other.guestSessionId, guestSessionId) ||
                other.guestSessionId == guestSessionId) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, guestSessionId, expiresAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuestSessionResponseModelImplCopyWith<_$GuestSessionResponseModelImpl>
      get copyWith => __$$GuestSessionResponseModelImplCopyWithImpl<
          _$GuestSessionResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuestSessionResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GuestSessionResponseModel implements GuestSessionResponseModel {
  const factory _GuestSessionResponseModel(
          {@JsonKey(name: 'guest_session_id') final String guestSessionId,
          @JsonKey(name: 'expires_at') final String expiresAt}) =
      _$GuestSessionResponseModelImpl;

  factory _GuestSessionResponseModel.fromJson(Map<String, dynamic> json) =
      _$GuestSessionResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'guest_session_id')
  String get guestSessionId;
  @override
  @JsonKey(name: 'expires_at')
  String get expiresAt;
  @override
  @JsonKey(ignore: true)
  _$$GuestSessionResponseModelImplCopyWith<_$GuestSessionResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
