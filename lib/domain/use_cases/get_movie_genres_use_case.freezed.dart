// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_movie_genres_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetMovieGenresUseCaseParams {
  String get language => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetMovieGenresUseCaseParamsCopyWith<GetMovieGenresUseCaseParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMovieGenresUseCaseParamsCopyWith<$Res> {
  factory $GetMovieGenresUseCaseParamsCopyWith(
          GetMovieGenresUseCaseParams value,
          $Res Function(GetMovieGenresUseCaseParams) then) =
      _$GetMovieGenresUseCaseParamsCopyWithImpl<$Res,
          GetMovieGenresUseCaseParams>;
  @useResult
  $Res call({String language});
}

/// @nodoc
class _$GetMovieGenresUseCaseParamsCopyWithImpl<$Res,
        $Val extends GetMovieGenresUseCaseParams>
    implements $GetMovieGenresUseCaseParamsCopyWith<$Res> {
  _$GetMovieGenresUseCaseParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetMovieGenresUseCaseParamsCopyWith<$Res>
    implements $GetMovieGenresUseCaseParamsCopyWith<$Res> {
  factory _$$_GetMovieGenresUseCaseParamsCopyWith(
          _$_GetMovieGenresUseCaseParams value,
          $Res Function(_$_GetMovieGenresUseCaseParams) then) =
      __$$_GetMovieGenresUseCaseParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String language});
}

/// @nodoc
class __$$_GetMovieGenresUseCaseParamsCopyWithImpl<$Res>
    extends _$GetMovieGenresUseCaseParamsCopyWithImpl<$Res,
        _$_GetMovieGenresUseCaseParams>
    implements _$$_GetMovieGenresUseCaseParamsCopyWith<$Res> {
  __$$_GetMovieGenresUseCaseParamsCopyWithImpl(
      _$_GetMovieGenresUseCaseParams _value,
      $Res Function(_$_GetMovieGenresUseCaseParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
  }) {
    return _then(_$_GetMovieGenresUseCaseParams(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetMovieGenresUseCaseParams implements _GetMovieGenresUseCaseParams {
  const _$_GetMovieGenresUseCaseParams({this.language = ''});

  @override
  @JsonKey()
  final String language;

  @override
  String toString() {
    return 'GetMovieGenresUseCaseParams(language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMovieGenresUseCaseParams &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMovieGenresUseCaseParamsCopyWith<_$_GetMovieGenresUseCaseParams>
      get copyWith => __$$_GetMovieGenresUseCaseParamsCopyWithImpl<
          _$_GetMovieGenresUseCaseParams>(this, _$identity);
}

abstract class _GetMovieGenresUseCaseParams
    implements GetMovieGenresUseCaseParams {
  const factory _GetMovieGenresUseCaseParams({final String language}) =
      _$_GetMovieGenresUseCaseParams;

  @override
  String get language;
  @override
  @JsonKey(ignore: true)
  _$$_GetMovieGenresUseCaseParamsCopyWith<_$_GetMovieGenresUseCaseParams>
      get copyWith => throw _privateConstructorUsedError;
}
