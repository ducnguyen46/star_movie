// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieDetailState {
  MovieDetailStatus get status => throw _privateConstructorUsedError;
  MovieDetail? get movieDetail => throw _privateConstructorUsedError;
  ErrorStateCommon? get errorState => throw _privateConstructorUsedError;

  ///
  bool get showTitle => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MovieDetailStatus status,
            MovieDetail? movieDetail,
            ErrorStateCommon? errorState,
            bool showTitle)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MovieDetailStatus status, MovieDetail? movieDetail,
            ErrorStateCommon? errorState, bool showTitle)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MovieDetailStatus status, MovieDetail? movieDetail,
            ErrorStateCommon? errorState, bool showTitle)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailStateCopyWith<MovieDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailStateCopyWith<$Res> {
  factory $MovieDetailStateCopyWith(
          MovieDetailState value, $Res Function(MovieDetailState) then) =
      _$MovieDetailStateCopyWithImpl<$Res, MovieDetailState>;
  @useResult
  $Res call(
      {MovieDetailStatus status,
      MovieDetail? movieDetail,
      ErrorStateCommon? errorState,
      bool showTitle});

  $MovieDetailCopyWith<$Res>? get movieDetail;
  $ErrorStateCommonCopyWith<$Res>? get errorState;
}

/// @nodoc
class _$MovieDetailStateCopyWithImpl<$Res, $Val extends MovieDetailState>
    implements $MovieDetailStateCopyWith<$Res> {
  _$MovieDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? movieDetail = freezed,
    Object? errorState = freezed,
    Object? showTitle = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MovieDetailStatus,
      movieDetail: freezed == movieDetail
          ? _value.movieDetail
          : movieDetail // ignore: cast_nullable_to_non_nullable
              as MovieDetail?,
      errorState: freezed == errorState
          ? _value.errorState
          : errorState // ignore: cast_nullable_to_non_nullable
              as ErrorStateCommon?,
      showTitle: null == showTitle
          ? _value.showTitle
          : showTitle // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieDetailCopyWith<$Res>? get movieDetail {
    if (_value.movieDetail == null) {
      return null;
    }

    return $MovieDetailCopyWith<$Res>(_value.movieDetail!, (value) {
      return _then(_value.copyWith(movieDetail: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorStateCommonCopyWith<$Res>? get errorState {
    if (_value.errorState == null) {
      return null;
    }

    return $ErrorStateCommonCopyWith<$Res>(_value.errorState!, (value) {
      return _then(_value.copyWith(errorState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $MovieDetailStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MovieDetailStatus status,
      MovieDetail? movieDetail,
      ErrorStateCommon? errorState,
      bool showTitle});

  @override
  $MovieDetailCopyWith<$Res>? get movieDetail;
  @override
  $ErrorStateCommonCopyWith<$Res>? get errorState;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$MovieDetailStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? movieDetail = freezed,
    Object? errorState = freezed,
    Object? showTitle = null,
  }) {
    return _then(_$_Initial(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MovieDetailStatus,
      movieDetail: freezed == movieDetail
          ? _value.movieDetail
          : movieDetail // ignore: cast_nullable_to_non_nullable
              as MovieDetail?,
      errorState: freezed == errorState
          ? _value.errorState
          : errorState // ignore: cast_nullable_to_non_nullable
              as ErrorStateCommon?,
      showTitle: null == showTitle
          ? _value.showTitle
          : showTitle // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.status = MovieDetailStatus.loading,
      this.movieDetail,
      this.errorState,
      this.showTitle = false});

  @override
  @JsonKey()
  final MovieDetailStatus status;
  @override
  final MovieDetail? movieDetail;
  @override
  final ErrorStateCommon? errorState;

  ///
  @override
  @JsonKey()
  final bool showTitle;

  @override
  String toString() {
    return 'MovieDetailState.initial(status: $status, movieDetail: $movieDetail, errorState: $errorState, showTitle: $showTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.movieDetail, movieDetail) ||
                other.movieDetail == movieDetail) &&
            (identical(other.errorState, errorState) ||
                other.errorState == errorState) &&
            (identical(other.showTitle, showTitle) ||
                other.showTitle == showTitle));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, movieDetail, errorState, showTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MovieDetailStatus status,
            MovieDetail? movieDetail,
            ErrorStateCommon? errorState,
            bool showTitle)
        initial,
  }) {
    return initial(status, movieDetail, errorState, showTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MovieDetailStatus status, MovieDetail? movieDetail,
            ErrorStateCommon? errorState, bool showTitle)?
        initial,
  }) {
    return initial?.call(status, movieDetail, errorState, showTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MovieDetailStatus status, MovieDetail? movieDetail,
            ErrorStateCommon? errorState, bool showTitle)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status, movieDetail, errorState, showTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MovieDetailState {
  const factory _Initial(
      {final MovieDetailStatus status,
      final MovieDetail? movieDetail,
      final ErrorStateCommon? errorState,
      final bool showTitle}) = _$_Initial;

  @override
  MovieDetailStatus get status;
  @override
  MovieDetail? get movieDetail;
  @override
  ErrorStateCommon? get errorState;
  @override

  ///
  bool get showTitle;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
