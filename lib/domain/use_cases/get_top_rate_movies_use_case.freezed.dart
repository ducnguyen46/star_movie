// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_top_rate_movies_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetTopRateMoviesUseCaseParams {
  int get page => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetTopRateMoviesUseCaseParamsCopyWith<GetTopRateMoviesUseCaseParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTopRateMoviesUseCaseParamsCopyWith<$Res> {
  factory $GetTopRateMoviesUseCaseParamsCopyWith(
          GetTopRateMoviesUseCaseParams value,
          $Res Function(GetTopRateMoviesUseCaseParams) then) =
      _$GetTopRateMoviesUseCaseParamsCopyWithImpl<$Res,
          GetTopRateMoviesUseCaseParams>;
  @useResult
  $Res call({int page, String language, String region});
}

/// @nodoc
class _$GetTopRateMoviesUseCaseParamsCopyWithImpl<$Res,
        $Val extends GetTopRateMoviesUseCaseParams>
    implements $GetTopRateMoviesUseCaseParamsCopyWith<$Res> {
  _$GetTopRateMoviesUseCaseParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$GetTopRateMoviesUseCaseParamsImplCopyWith<$Res>
    implements $GetTopRateMoviesUseCaseParamsCopyWith<$Res> {
  factory _$$GetTopRateMoviesUseCaseParamsImplCopyWith(
          _$GetTopRateMoviesUseCaseParamsImpl value,
          $Res Function(_$GetTopRateMoviesUseCaseParamsImpl) then) =
      __$$GetTopRateMoviesUseCaseParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, String language, String region});
}

/// @nodoc
class __$$GetTopRateMoviesUseCaseParamsImplCopyWithImpl<$Res>
    extends _$GetTopRateMoviesUseCaseParamsCopyWithImpl<$Res,
        _$GetTopRateMoviesUseCaseParamsImpl>
    implements _$$GetTopRateMoviesUseCaseParamsImplCopyWith<$Res> {
  __$$GetTopRateMoviesUseCaseParamsImplCopyWithImpl(
      _$GetTopRateMoviesUseCaseParamsImpl _value,
      $Res Function(_$GetTopRateMoviesUseCaseParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? language = null,
    Object? region = null,
  }) {
    return _then(_$GetTopRateMoviesUseCaseParamsImpl(
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

class _$GetTopRateMoviesUseCaseParamsImpl
    implements _GetTopRateMoviesUseCaseParams {
  const _$GetTopRateMoviesUseCaseParamsImpl(
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
    return 'GetTopRateMoviesUseCaseParams(page: $page, language: $language, region: $region)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTopRateMoviesUseCaseParamsImpl &&
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
  _$$GetTopRateMoviesUseCaseParamsImplCopyWith<
          _$GetTopRateMoviesUseCaseParamsImpl>
      get copyWith => __$$GetTopRateMoviesUseCaseParamsImplCopyWithImpl<
          _$GetTopRateMoviesUseCaseParamsImpl>(this, _$identity);
}

abstract class _GetTopRateMoviesUseCaseParams
    implements GetTopRateMoviesUseCaseParams {
  const factory _GetTopRateMoviesUseCaseParams(
      {final int page,
      final String language,
      final String region}) = _$GetTopRateMoviesUseCaseParamsImpl;

  @override
  int get page;
  @override
  String get language;
  @override
  String get region;
  @override
  @JsonKey(ignore: true)
  _$$GetTopRateMoviesUseCaseParamsImplCopyWith<
          _$GetTopRateMoviesUseCaseParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
