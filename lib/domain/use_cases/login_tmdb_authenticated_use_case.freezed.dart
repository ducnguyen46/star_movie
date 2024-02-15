// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_tmdb_authenticated_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginTMDBAuthenticatedUseCaseParams {
  String get requestToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginTMDBAuthenticatedUseCaseParamsCopyWith<
          LoginTMDBAuthenticatedUseCaseParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginTMDBAuthenticatedUseCaseParamsCopyWith<$Res> {
  factory $LoginTMDBAuthenticatedUseCaseParamsCopyWith(
          LoginTMDBAuthenticatedUseCaseParams value,
          $Res Function(LoginTMDBAuthenticatedUseCaseParams) then) =
      _$LoginTMDBAuthenticatedUseCaseParamsCopyWithImpl<$Res,
          LoginTMDBAuthenticatedUseCaseParams>;
  @useResult
  $Res call({String requestToken});
}

/// @nodoc
class _$LoginTMDBAuthenticatedUseCaseParamsCopyWithImpl<$Res,
        $Val extends LoginTMDBAuthenticatedUseCaseParams>
    implements $LoginTMDBAuthenticatedUseCaseParamsCopyWith<$Res> {
  _$LoginTMDBAuthenticatedUseCaseParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestToken = null,
  }) {
    return _then(_value.copyWith(
      requestToken: null == requestToken
          ? _value.requestToken
          : requestToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginTMDBAuthenticatedUseCaseParamsImplCopyWith<$Res>
    implements $LoginTMDBAuthenticatedUseCaseParamsCopyWith<$Res> {
  factory _$$LoginTMDBAuthenticatedUseCaseParamsImplCopyWith(
          _$LoginTMDBAuthenticatedUseCaseParamsImpl value,
          $Res Function(_$LoginTMDBAuthenticatedUseCaseParamsImpl) then) =
      __$$LoginTMDBAuthenticatedUseCaseParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String requestToken});
}

/// @nodoc
class __$$LoginTMDBAuthenticatedUseCaseParamsImplCopyWithImpl<$Res>
    extends _$LoginTMDBAuthenticatedUseCaseParamsCopyWithImpl<$Res,
        _$LoginTMDBAuthenticatedUseCaseParamsImpl>
    implements _$$LoginTMDBAuthenticatedUseCaseParamsImplCopyWith<$Res> {
  __$$LoginTMDBAuthenticatedUseCaseParamsImplCopyWithImpl(
      _$LoginTMDBAuthenticatedUseCaseParamsImpl _value,
      $Res Function(_$LoginTMDBAuthenticatedUseCaseParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestToken = null,
  }) {
    return _then(_$LoginTMDBAuthenticatedUseCaseParamsImpl(
      requestToken: null == requestToken
          ? _value.requestToken
          : requestToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginTMDBAuthenticatedUseCaseParamsImpl
    implements _LoginTMDBAuthenticatedUseCaseParams {
  const _$LoginTMDBAuthenticatedUseCaseParamsImpl({required this.requestToken});

  @override
  final String requestToken;

  @override
  String toString() {
    return 'LoginTMDBAuthenticatedUseCaseParams(requestToken: $requestToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginTMDBAuthenticatedUseCaseParamsImpl &&
            (identical(other.requestToken, requestToken) ||
                other.requestToken == requestToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginTMDBAuthenticatedUseCaseParamsImplCopyWith<
          _$LoginTMDBAuthenticatedUseCaseParamsImpl>
      get copyWith => __$$LoginTMDBAuthenticatedUseCaseParamsImplCopyWithImpl<
          _$LoginTMDBAuthenticatedUseCaseParamsImpl>(this, _$identity);
}

abstract class _LoginTMDBAuthenticatedUseCaseParams
    implements LoginTMDBAuthenticatedUseCaseParams {
  const factory _LoginTMDBAuthenticatedUseCaseParams(
          {required final String requestToken}) =
      _$LoginTMDBAuthenticatedUseCaseParamsImpl;

  @override
  String get requestToken;
  @override
  @JsonKey(ignore: true)
  _$$LoginTMDBAuthenticatedUseCaseParamsImplCopyWith<
          _$LoginTMDBAuthenticatedUseCaseParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
