// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Movie> popularMovies,
            List<Movie> nowPlayingMovies,
            List<Movie> upcomingMovies,
            List<Movie> topRateMovies,
            List<Movie> trendingMovies)
        loaded,
    required TResult Function(
            String message, AppException? exception, void Function()? onRetry)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<Movie> popularMovies,
            List<Movie> nowPlayingMovies,
            List<Movie> upcomingMovies,
            List<Movie> topRateMovies,
            List<Movie> trendingMovies)?
        loaded,
    TResult? Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<Movie> popularMovies,
            List<Movie> nowPlayingMovies,
            List<Movie> upcomingMovies,
            List<Movie> topRateMovies,
            List<Movie> trendingMovies)?
        loaded,
    TResult Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateCopyWith<$Res> {
  factory $MovieStateCopyWith(
          MovieState value, $Res Function(MovieState) then) =
      _$MovieStateCopyWithImpl<$Res, MovieState>;
}

/// @nodoc
class _$MovieStateCopyWithImpl<$Res, $Val extends MovieState>
    implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'MovieState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Movie> popularMovies,
            List<Movie> nowPlayingMovies,
            List<Movie> upcomingMovies,
            List<Movie> topRateMovies,
            List<Movie> trendingMovies)
        loaded,
    required TResult Function(
            String message, AppException? exception, void Function()? onRetry)
        error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<Movie> popularMovies,
            List<Movie> nowPlayingMovies,
            List<Movie> upcomingMovies,
            List<Movie> topRateMovies,
            List<Movie> trendingMovies)?
        loaded,
    TResult? Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<Movie> popularMovies,
            List<Movie> nowPlayingMovies,
            List<Movie> upcomingMovies,
            List<Movie> topRateMovies,
            List<Movie> trendingMovies)?
        loaded,
    TResult Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements MovieState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$LoadedCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Movie> popularMovies,
      List<Movie> nowPlayingMovies,
      List<Movie> upcomingMovies,
      List<Movie> topRateMovies,
      List<Movie> trendingMovies});
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$Loaded>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? popularMovies = null,
    Object? nowPlayingMovies = null,
    Object? upcomingMovies = null,
    Object? topRateMovies = null,
    Object? trendingMovies = null,
  }) {
    return _then(_$Loaded(
      popularMovies: null == popularMovies
          ? _value._popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      nowPlayingMovies: null == nowPlayingMovies
          ? _value._nowPlayingMovies
          : nowPlayingMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      upcomingMovies: null == upcomingMovies
          ? _value._upcomingMovies
          : upcomingMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      topRateMovies: null == topRateMovies
          ? _value._topRateMovies
          : topRateMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      trendingMovies: null == trendingMovies
          ? _value._trendingMovies
          : trendingMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded(
      {required final List<Movie> popularMovies,
      required final List<Movie> nowPlayingMovies,
      required final List<Movie> upcomingMovies,
      required final List<Movie> topRateMovies,
      required final List<Movie> trendingMovies})
      : _popularMovies = popularMovies,
        _nowPlayingMovies = nowPlayingMovies,
        _upcomingMovies = upcomingMovies,
        _topRateMovies = topRateMovies,
        _trendingMovies = trendingMovies;

  final List<Movie> _popularMovies;
  @override
  List<Movie> get popularMovies {
    if (_popularMovies is EqualUnmodifiableListView) return _popularMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularMovies);
  }

  final List<Movie> _nowPlayingMovies;
  @override
  List<Movie> get nowPlayingMovies {
    if (_nowPlayingMovies is EqualUnmodifiableListView)
      return _nowPlayingMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nowPlayingMovies);
  }

  final List<Movie> _upcomingMovies;
  @override
  List<Movie> get upcomingMovies {
    if (_upcomingMovies is EqualUnmodifiableListView) return _upcomingMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcomingMovies);
  }

  final List<Movie> _topRateMovies;
  @override
  List<Movie> get topRateMovies {
    if (_topRateMovies is EqualUnmodifiableListView) return _topRateMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topRateMovies);
  }

  final List<Movie> _trendingMovies;
  @override
  List<Movie> get trendingMovies {
    if (_trendingMovies is EqualUnmodifiableListView) return _trendingMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingMovies);
  }

  @override
  String toString() {
    return 'MovieState.loaded(popularMovies: $popularMovies, nowPlayingMovies: $nowPlayingMovies, upcomingMovies: $upcomingMovies, topRateMovies: $topRateMovies, trendingMovies: $trendingMovies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded &&
            const DeepCollectionEquality()
                .equals(other._popularMovies, _popularMovies) &&
            const DeepCollectionEquality()
                .equals(other._nowPlayingMovies, _nowPlayingMovies) &&
            const DeepCollectionEquality()
                .equals(other._upcomingMovies, _upcomingMovies) &&
            const DeepCollectionEquality()
                .equals(other._topRateMovies, _topRateMovies) &&
            const DeepCollectionEquality()
                .equals(other._trendingMovies, _trendingMovies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_popularMovies),
      const DeepCollectionEquality().hash(_nowPlayingMovies),
      const DeepCollectionEquality().hash(_upcomingMovies),
      const DeepCollectionEquality().hash(_topRateMovies),
      const DeepCollectionEquality().hash(_trendingMovies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      __$$LoadedCopyWithImpl<_$Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Movie> popularMovies,
            List<Movie> nowPlayingMovies,
            List<Movie> upcomingMovies,
            List<Movie> topRateMovies,
            List<Movie> trendingMovies)
        loaded,
    required TResult Function(
            String message, AppException? exception, void Function()? onRetry)
        error,
  }) {
    return loaded(popularMovies, nowPlayingMovies, upcomingMovies,
        topRateMovies, trendingMovies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<Movie> popularMovies,
            List<Movie> nowPlayingMovies,
            List<Movie> upcomingMovies,
            List<Movie> topRateMovies,
            List<Movie> trendingMovies)?
        loaded,
    TResult? Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
  }) {
    return loaded?.call(popularMovies, nowPlayingMovies, upcomingMovies,
        topRateMovies, trendingMovies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<Movie> popularMovies,
            List<Movie> nowPlayingMovies,
            List<Movie> upcomingMovies,
            List<Movie> topRateMovies,
            List<Movie> trendingMovies)?
        loaded,
    TResult Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(popularMovies, nowPlayingMovies, upcomingMovies,
          topRateMovies, trendingMovies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements MovieState {
  const factory Loaded(
      {required final List<Movie> popularMovies,
      required final List<Movie> nowPlayingMovies,
      required final List<Movie> upcomingMovies,
      required final List<Movie> topRateMovies,
      required final List<Movie> trendingMovies}) = _$Loaded;

  List<Movie> get popularMovies;
  List<Movie> get nowPlayingMovies;
  List<Movie> get upcomingMovies;
  List<Movie> get topRateMovies;
  List<Movie> get trendingMovies;
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String message, AppException? exception, void Function()? onRetry});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? exception = freezed,
    Object? onRetry = freezed,
  }) {
    return _then(_$Error(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as AppException?,
      onRetry: freezed == onRetry
          ? _value.onRetry
          : onRetry // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({this.message = '', this.exception, this.onRetry});

  @override
  @JsonKey()
  final String message;
  @override
  final AppException? exception;
  @override
  final void Function()? onRetry;

  @override
  String toString() {
    return 'MovieState.error(message: $message, exception: $exception, onRetry: $onRetry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.onRetry, onRetry) || other.onRetry == onRetry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, exception, onRetry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Movie> popularMovies,
            List<Movie> nowPlayingMovies,
            List<Movie> upcomingMovies,
            List<Movie> topRateMovies,
            List<Movie> trendingMovies)
        loaded,
    required TResult Function(
            String message, AppException? exception, void Function()? onRetry)
        error,
  }) {
    return error(message, exception, onRetry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<Movie> popularMovies,
            List<Movie> nowPlayingMovies,
            List<Movie> upcomingMovies,
            List<Movie> topRateMovies,
            List<Movie> trendingMovies)?
        loaded,
    TResult? Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
  }) {
    return error?.call(message, exception, onRetry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<Movie> popularMovies,
            List<Movie> nowPlayingMovies,
            List<Movie> upcomingMovies,
            List<Movie> topRateMovies,
            List<Movie> trendingMovies)?
        loaded,
    TResult Function(
            String message, AppException? exception, void Function()? onRetry)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, exception, onRetry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements MovieState {
  const factory Error(
      {final String message,
      final AppException? exception,
      final void Function()? onRetry}) = _$Error;

  String get message;
  AppException? get exception;
  void Function()? get onRetry;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}
