// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_movie_detail_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetMovieDetailUseCaseParams {
  String get movieId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetMovieDetailUseCaseParamsCopyWith<GetMovieDetailUseCaseParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMovieDetailUseCaseParamsCopyWith<$Res> {
  factory $GetMovieDetailUseCaseParamsCopyWith(
          GetMovieDetailUseCaseParams value,
          $Res Function(GetMovieDetailUseCaseParams) then) =
      _$GetMovieDetailUseCaseParamsCopyWithImpl<$Res,
          GetMovieDetailUseCaseParams>;
  @useResult
  $Res call({String movieId});
}

/// @nodoc
class _$GetMovieDetailUseCaseParamsCopyWithImpl<$Res,
        $Val extends GetMovieDetailUseCaseParams>
    implements $GetMovieDetailUseCaseParamsCopyWith<$Res> {
  _$GetMovieDetailUseCaseParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
  }) {
    return _then(_value.copyWith(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetMovieDetailUseCaseParamsCopyWith<$Res>
    implements $GetMovieDetailUseCaseParamsCopyWith<$Res> {
  factory _$$_GetMovieDetailUseCaseParamsCopyWith(
          _$_GetMovieDetailUseCaseParams value,
          $Res Function(_$_GetMovieDetailUseCaseParams) then) =
      __$$_GetMovieDetailUseCaseParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String movieId});
}

/// @nodoc
class __$$_GetMovieDetailUseCaseParamsCopyWithImpl<$Res>
    extends _$GetMovieDetailUseCaseParamsCopyWithImpl<$Res,
        _$_GetMovieDetailUseCaseParams>
    implements _$$_GetMovieDetailUseCaseParamsCopyWith<$Res> {
  __$$_GetMovieDetailUseCaseParamsCopyWithImpl(
      _$_GetMovieDetailUseCaseParams _value,
      $Res Function(_$_GetMovieDetailUseCaseParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
  }) {
    return _then(_$_GetMovieDetailUseCaseParams(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetMovieDetailUseCaseParams implements _GetMovieDetailUseCaseParams {
  const _$_GetMovieDetailUseCaseParams({required this.movieId});

  @override
  final String movieId;

  @override
  String toString() {
    return 'GetMovieDetailUseCaseParams(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMovieDetailUseCaseParams &&
            (identical(other.movieId, movieId) || other.movieId == movieId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMovieDetailUseCaseParamsCopyWith<_$_GetMovieDetailUseCaseParams>
      get copyWith => __$$_GetMovieDetailUseCaseParamsCopyWithImpl<
          _$_GetMovieDetailUseCaseParams>(this, _$identity);
}

abstract class _GetMovieDetailUseCaseParams
    implements GetMovieDetailUseCaseParams {
  const factory _GetMovieDetailUseCaseParams({required final String movieId}) =
      _$_GetMovieDetailUseCaseParams;

  @override
  String get movieId;
  @override
  @JsonKey(ignore: true)
  _$$_GetMovieDetailUseCaseParamsCopyWith<_$_GetMovieDetailUseCaseParams>
      get copyWith => throw _privateConstructorUsedError;
}
