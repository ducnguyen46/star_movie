// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MoviesResponseModel _$MoviesResponseModelFromJson(Map<String, dynamic> json) {
  return _MoviesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MoviesResponseModel {
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<MovieModel> get movies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesResponseModelCopyWith<MoviesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesResponseModelCopyWith<$Res> {
  factory $MoviesResponseModelCopyWith(
          MoviesResponseModel value, $Res Function(MoviesResponseModel) then) =
      _$MoviesResponseModelCopyWithImpl<$Res, MoviesResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'total_pages') int totalPage,
      @JsonKey(name: 'results') List<MovieModel> movies});
}

/// @nodoc
class _$MoviesResponseModelCopyWithImpl<$Res, $Val extends MoviesResponseModel>
    implements $MoviesResponseModelCopyWith<$Res> {
  _$MoviesResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? totalPage = null,
    Object? movies = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoviesResponseModelImplCopyWith<$Res>
    implements $MoviesResponseModelCopyWith<$Res> {
  factory _$$MoviesResponseModelImplCopyWith(_$MoviesResponseModelImpl value,
          $Res Function(_$MoviesResponseModelImpl) then) =
      __$$MoviesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'total_pages') int totalPage,
      @JsonKey(name: 'results') List<MovieModel> movies});
}

/// @nodoc
class __$$MoviesResponseModelImplCopyWithImpl<$Res>
    extends _$MoviesResponseModelCopyWithImpl<$Res, _$MoviesResponseModelImpl>
    implements _$$MoviesResponseModelImplCopyWith<$Res> {
  __$$MoviesResponseModelImplCopyWithImpl(_$MoviesResponseModelImpl _value,
      $Res Function(_$MoviesResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? totalPage = null,
    Object? movies = null,
  }) {
    return _then(_$MoviesResponseModelImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoviesResponseModelImpl implements _MoviesResponseModel {
  const _$MoviesResponseModelImpl(
      {@JsonKey(name: 'page') this.page = 0,
      @JsonKey(name: 'total_pages') this.totalPage = 0,
      @JsonKey(name: 'results')
      final List<MovieModel> movies = const <MovieModel>[]})
      : _movies = movies;

  factory _$MoviesResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoviesResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'page')
  final int page;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPage;
  final List<MovieModel> _movies;
  @override
  @JsonKey(name: 'results')
  List<MovieModel> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  String toString() {
    return 'MoviesResponseModel(page: $page, totalPage: $totalPage, movies: $movies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesResponseModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, totalPage,
      const DeepCollectionEquality().hash(_movies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesResponseModelImplCopyWith<_$MoviesResponseModelImpl> get copyWith =>
      __$$MoviesResponseModelImplCopyWithImpl<_$MoviesResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoviesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _MoviesResponseModel implements MoviesResponseModel {
  const factory _MoviesResponseModel(
          {@JsonKey(name: 'page') final int page,
          @JsonKey(name: 'total_pages') final int totalPage,
          @JsonKey(name: 'results') final List<MovieModel> movies}) =
      _$MoviesResponseModelImpl;

  factory _MoviesResponseModel.fromJson(Map<String, dynamic> json) =
      _$MoviesResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'page')
  int get page;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPage;
  @override
  @JsonKey(name: 'results')
  List<MovieModel> get movies;
  @override
  @JsonKey(ignore: true)
  _$$MoviesResponseModelImplCopyWith<_$MoviesResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
