// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_popular_movies_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetPopularMoviesUseCaseParams {
  int get page => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetPopularMoviesUseCaseParamsCopyWith<GetPopularMoviesUseCaseParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPopularMoviesUseCaseParamsCopyWith<$Res> {
  factory $GetPopularMoviesUseCaseParamsCopyWith(
          GetPopularMoviesUseCaseParams value,
          $Res Function(GetPopularMoviesUseCaseParams) then) =
      _$GetPopularMoviesUseCaseParamsCopyWithImpl<$Res,
          GetPopularMoviesUseCaseParams>;
  @useResult
  $Res call({int page, String language, String region});
}

/// @nodoc
class _$GetPopularMoviesUseCaseParamsCopyWithImpl<$Res,
        $Val extends GetPopularMoviesUseCaseParams>
    implements $GetPopularMoviesUseCaseParamsCopyWith<$Res> {
  _$GetPopularMoviesUseCaseParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$GetPopularMoviesUseCaseParamsImplCopyWith<$Res>
    implements $GetPopularMoviesUseCaseParamsCopyWith<$Res> {
  factory _$$GetPopularMoviesUseCaseParamsImplCopyWith(
          _$GetPopularMoviesUseCaseParamsImpl value,
          $Res Function(_$GetPopularMoviesUseCaseParamsImpl) then) =
      __$$GetPopularMoviesUseCaseParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, String language, String region});
}

/// @nodoc
class __$$GetPopularMoviesUseCaseParamsImplCopyWithImpl<$Res>
    extends _$GetPopularMoviesUseCaseParamsCopyWithImpl<$Res,
        _$GetPopularMoviesUseCaseParamsImpl>
    implements _$$GetPopularMoviesUseCaseParamsImplCopyWith<$Res> {
  __$$GetPopularMoviesUseCaseParamsImplCopyWithImpl(
      _$GetPopularMoviesUseCaseParamsImpl _value,
      $Res Function(_$GetPopularMoviesUseCaseParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? language = null,
    Object? region = null,
  }) {
    return _then(_$GetPopularMoviesUseCaseParamsImpl(
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

class _$GetPopularMoviesUseCaseParamsImpl
    implements _GetPopularMoviesUseCaseParams {
  const _$GetPopularMoviesUseCaseParamsImpl(
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
    return 'GetPopularMoviesUseCaseParams(page: $page, language: $language, region: $region)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPopularMoviesUseCaseParamsImpl &&
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
  _$$GetPopularMoviesUseCaseParamsImplCopyWith<
          _$GetPopularMoviesUseCaseParamsImpl>
      get copyWith => __$$GetPopularMoviesUseCaseParamsImplCopyWithImpl<
          _$GetPopularMoviesUseCaseParamsImpl>(this, _$identity);
}

abstract class _GetPopularMoviesUseCaseParams
    implements GetPopularMoviesUseCaseParams {
  const factory _GetPopularMoviesUseCaseParams(
      {final int page,
      final String language,
      final String region}) = _$GetPopularMoviesUseCaseParamsImpl;

  @override
  int get page;
  @override
  String get language;
  @override
  String get region;
  @override
  @JsonKey(ignore: true)
  _$$GetPopularMoviesUseCaseParamsImplCopyWith<
          _$GetPopularMoviesUseCaseParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
