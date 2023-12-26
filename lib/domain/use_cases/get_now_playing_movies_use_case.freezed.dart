// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_now_playing_movies_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetNowPlayingMoviesUseCaseParams {
  int get page => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetNowPlayingMoviesUseCaseParamsCopyWith<GetNowPlayingMoviesUseCaseParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNowPlayingMoviesUseCaseParamsCopyWith<$Res> {
  factory $GetNowPlayingMoviesUseCaseParamsCopyWith(
          GetNowPlayingMoviesUseCaseParams value,
          $Res Function(GetNowPlayingMoviesUseCaseParams) then) =
      _$GetNowPlayingMoviesUseCaseParamsCopyWithImpl<$Res,
          GetNowPlayingMoviesUseCaseParams>;
  @useResult
  $Res call({int page, String language, String region});
}

/// @nodoc
class _$GetNowPlayingMoviesUseCaseParamsCopyWithImpl<$Res,
        $Val extends GetNowPlayingMoviesUseCaseParams>
    implements $GetNowPlayingMoviesUseCaseParamsCopyWith<$Res> {
  _$GetNowPlayingMoviesUseCaseParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? language = null,
    Object? region = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetNowPlayingMoviesUseCaseParamsCopyWith<$Res>
    implements $GetNowPlayingMoviesUseCaseParamsCopyWith<$Res> {
  factory _$$_GetNowPlayingMoviesUseCaseParamsCopyWith(
          _$_GetNowPlayingMoviesUseCaseParams value,
          $Res Function(_$_GetNowPlayingMoviesUseCaseParams) then) =
      __$$_GetNowPlayingMoviesUseCaseParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, String language, String region});
}

/// @nodoc
class __$$_GetNowPlayingMoviesUseCaseParamsCopyWithImpl<$Res>
    extends _$GetNowPlayingMoviesUseCaseParamsCopyWithImpl<$Res,
        _$_GetNowPlayingMoviesUseCaseParams>
    implements _$$_GetNowPlayingMoviesUseCaseParamsCopyWith<$Res> {
  __$$_GetNowPlayingMoviesUseCaseParamsCopyWithImpl(
      _$_GetNowPlayingMoviesUseCaseParams _value,
      $Res Function(_$_GetNowPlayingMoviesUseCaseParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? language = null,
    Object? region = null,
  }) {
    return _then(_$_GetNowPlayingMoviesUseCaseParams(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetNowPlayingMoviesUseCaseParams
    implements _GetNowPlayingMoviesUseCaseParams {
  const _$_GetNowPlayingMoviesUseCaseParams(
      {this.page = 1, this.language = '', this.region = ''});

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final String language;
  @override
  @JsonKey()
  final String region;

  @override
  String toString() {
    return 'GetNowPlayingMoviesUseCaseParams(page: $page, language: $language, region: $region)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetNowPlayingMoviesUseCaseParams &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.region, region) || other.region == region));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, language, region);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetNowPlayingMoviesUseCaseParamsCopyWith<
          _$_GetNowPlayingMoviesUseCaseParams>
      get copyWith => __$$_GetNowPlayingMoviesUseCaseParamsCopyWithImpl<
          _$_GetNowPlayingMoviesUseCaseParams>(this, _$identity);
}

abstract class _GetNowPlayingMoviesUseCaseParams
    implements GetNowPlayingMoviesUseCaseParams {
  const factory _GetNowPlayingMoviesUseCaseParams(
      {final int page,
      final String language,
      final String region}) = _$_GetNowPlayingMoviesUseCaseParams;

  @override
  int get page;
  @override
  String get language;
  @override
  String get region;
  @override
  @JsonKey(ignore: true)
  _$$_GetNowPlayingMoviesUseCaseParamsCopyWith<
          _$_GetNowPlayingMoviesUseCaseParams>
      get copyWith => throw _privateConstructorUsedError;
}
