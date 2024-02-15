// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_home_movies_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ListHomeMoviesState {
  ListHomeMoviesStatus get status => throw _privateConstructorUsedError;
  List<Movie> get movies => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get errorMessages => throw _privateConstructorUsedError;
  AppException? get exception => throw _privateConstructorUsedError;
  void Function()? get onRetry => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ListHomeMoviesStatus status,
            List<Movie> movies,
            int page,
            String language,
            String region,
            String errorMessages,
            AppException? exception,
            void Function()? onRetry)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ListHomeMoviesStatus status,
            List<Movie> movies,
            int page,
            String language,
            String region,
            String errorMessages,
            AppException? exception,
            void Function()? onRetry)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ListHomeMoviesStatus status,
            List<Movie> movies,
            int page,
            String language,
            String region,
            String errorMessages,
            AppException? exception,
            void Function()? onRetry)?
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
  $ListHomeMoviesStateCopyWith<ListHomeMoviesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListHomeMoviesStateCopyWith<$Res> {
  factory $ListHomeMoviesStateCopyWith(
          ListHomeMoviesState value, $Res Function(ListHomeMoviesState) then) =
      _$ListHomeMoviesStateCopyWithImpl<$Res, ListHomeMoviesState>;
  @useResult
  $Res call(
      {ListHomeMoviesStatus status,
      List<Movie> movies,
      int page,
      String language,
      String region,
      String errorMessages,
      AppException? exception,
      void Function()? onRetry});
}

/// @nodoc
class _$ListHomeMoviesStateCopyWithImpl<$Res, $Val extends ListHomeMoviesState>
    implements $ListHomeMoviesStateCopyWith<$Res> {
  _$ListHomeMoviesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? movies = null,
    Object? page = null,
    Object? language = null,
    Object? region = null,
    Object? errorMessages = null,
    Object? exception = freezed,
    Object? onRetry = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ListHomeMoviesStatus,
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
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
      errorMessages: null == errorMessages
          ? _value.errorMessages
          : errorMessages // ignore: cast_nullable_to_non_nullable
              as String,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as AppException?,
      onRetry: freezed == onRetry
          ? _value.onRetry
          : onRetry // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ListHomeMoviesStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ListHomeMoviesStatus status,
      List<Movie> movies,
      int page,
      String language,
      String region,
      String errorMessages,
      AppException? exception,
      void Function()? onRetry});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ListHomeMoviesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? movies = null,
    Object? page = null,
    Object? language = null,
    Object? region = null,
    Object? errorMessages = null,
    Object? exception = freezed,
    Object? onRetry = freezed,
  }) {
    return _then(_$InitialImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ListHomeMoviesStatus,
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
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
      errorMessages: null == errorMessages
          ? _value.errorMessages
          : errorMessages // ignore: cast_nullable_to_non_nullable
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

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.status = ListHomeMoviesStatus.loading,
      final List<Movie> movies = const <Movie>[],
      this.page = 0,
      this.language = '',
      this.region = '',
      this.errorMessages = '',
      this.exception,
      this.onRetry})
      : _movies = movies;

  @override
  @JsonKey()
  final ListHomeMoviesStatus status;
  final List<Movie> _movies;
  @override
  @JsonKey()
  List<Movie> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

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
  @JsonKey()
  final String errorMessages;
  @override
  final AppException? exception;
  @override
  final void Function()? onRetry;

  @override
  String toString() {
    return 'ListHomeMoviesState.initial(status: $status, movies: $movies, page: $page, language: $language, region: $region, errorMessages: $errorMessages, exception: $exception, onRetry: $onRetry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.errorMessages, errorMessages) ||
                other.errorMessages == errorMessages) &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.onRetry, onRetry) || other.onRetry == onRetry));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_movies),
      page,
      language,
      region,
      errorMessages,
      exception,
      onRetry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ListHomeMoviesStatus status,
            List<Movie> movies,
            int page,
            String language,
            String region,
            String errorMessages,
            AppException? exception,
            void Function()? onRetry)
        initial,
  }) {
    return initial(status, movies, page, language, region, errorMessages,
        exception, onRetry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ListHomeMoviesStatus status,
            List<Movie> movies,
            int page,
            String language,
            String region,
            String errorMessages,
            AppException? exception,
            void Function()? onRetry)?
        initial,
  }) {
    return initial?.call(status, movies, page, language, region, errorMessages,
        exception, onRetry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ListHomeMoviesStatus status,
            List<Movie> movies,
            int page,
            String language,
            String region,
            String errorMessages,
            AppException? exception,
            void Function()? onRetry)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status, movies, page, language, region, errorMessages,
          exception, onRetry);
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

abstract class _Initial implements ListHomeMoviesState {
  const factory _Initial(
      {final ListHomeMoviesStatus status,
      final List<Movie> movies,
      final int page,
      final String language,
      final String region,
      final String errorMessages,
      final AppException? exception,
      final void Function()? onRetry}) = _$InitialImpl;

  @override
  ListHomeMoviesStatus get status;
  @override
  List<Movie> get movies;
  @override
  int get page;
  @override
  String get language;
  @override
  String get region;
  @override
  String get errorMessages;
  @override
  AppException? get exception;
  @override
  void Function()? get onRetry;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
