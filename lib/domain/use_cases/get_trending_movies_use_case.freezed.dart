// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_trending_movies_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetTrendingMoviesUseCaseParams {
// path
// week/day
  String get timeWindow => throw _privateConstructorUsedError; // query
  int get page => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetTrendingMoviesUseCaseParamsCopyWith<GetTrendingMoviesUseCaseParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTrendingMoviesUseCaseParamsCopyWith<$Res> {
  factory $GetTrendingMoviesUseCaseParamsCopyWith(
          GetTrendingMoviesUseCaseParams value,
          $Res Function(GetTrendingMoviesUseCaseParams) then) =
      _$GetTrendingMoviesUseCaseParamsCopyWithImpl<$Res,
          GetTrendingMoviesUseCaseParams>;
  @useResult
  $Res call({String timeWindow, int page, String language});
}

/// @nodoc
class _$GetTrendingMoviesUseCaseParamsCopyWithImpl<$Res,
        $Val extends GetTrendingMoviesUseCaseParams>
    implements $GetTrendingMoviesUseCaseParamsCopyWith<$Res> {
  _$GetTrendingMoviesUseCaseParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeWindow = null,
    Object? page = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      timeWindow: null == timeWindow
          ? _value.timeWindow
          : timeWindow // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetTrendingMoviesUseCaseParamsCopyWith<$Res>
    implements $GetTrendingMoviesUseCaseParamsCopyWith<$Res> {
  factory _$$_GetTrendingMoviesUseCaseParamsCopyWith(
          _$_GetTrendingMoviesUseCaseParams value,
          $Res Function(_$_GetTrendingMoviesUseCaseParams) then) =
      __$$_GetTrendingMoviesUseCaseParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String timeWindow, int page, String language});
}

/// @nodoc
class __$$_GetTrendingMoviesUseCaseParamsCopyWithImpl<$Res>
    extends _$GetTrendingMoviesUseCaseParamsCopyWithImpl<$Res,
        _$_GetTrendingMoviesUseCaseParams>
    implements _$$_GetTrendingMoviesUseCaseParamsCopyWith<$Res> {
  __$$_GetTrendingMoviesUseCaseParamsCopyWithImpl(
      _$_GetTrendingMoviesUseCaseParams _value,
      $Res Function(_$_GetTrendingMoviesUseCaseParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeWindow = null,
    Object? page = null,
    Object? language = null,
  }) {
    return _then(_$_GetTrendingMoviesUseCaseParams(
      timeWindow: null == timeWindow
          ? _value.timeWindow
          : timeWindow // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetTrendingMoviesUseCaseParams
    implements _GetTrendingMoviesUseCaseParams {
  const _$_GetTrendingMoviesUseCaseParams(
      {this.timeWindow = 'week', this.page = 1, this.language = ''});

// path
// week/day
  @override
  @JsonKey()
  final String timeWindow;
// query
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final String language;

  @override
  String toString() {
    return 'GetTrendingMoviesUseCaseParams(timeWindow: $timeWindow, page: $page, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTrendingMoviesUseCaseParams &&
            (identical(other.timeWindow, timeWindow) ||
                other.timeWindow == timeWindow) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeWindow, page, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetTrendingMoviesUseCaseParamsCopyWith<_$_GetTrendingMoviesUseCaseParams>
      get copyWith => __$$_GetTrendingMoviesUseCaseParamsCopyWithImpl<
          _$_GetTrendingMoviesUseCaseParams>(this, _$identity);
}

abstract class _GetTrendingMoviesUseCaseParams
    implements GetTrendingMoviesUseCaseParams {
  const factory _GetTrendingMoviesUseCaseParams(
      {final String timeWindow,
      final int page,
      final String language}) = _$_GetTrendingMoviesUseCaseParams;

  @override // path
// week/day
  String get timeWindow;
  @override // query
  int get page;
  @override
  String get language;
  @override
  @JsonKey(ignore: true)
  _$$_GetTrendingMoviesUseCaseParamsCopyWith<_$_GetTrendingMoviesUseCaseParams>
      get copyWith => throw _privateConstructorUsedError;
}
