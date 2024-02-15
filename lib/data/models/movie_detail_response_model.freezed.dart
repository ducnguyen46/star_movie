// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieDetailResponseModel _$MovieDetailResponseModelFromJson(
    Map<String, dynamic> json) {
  return _MovieDetailResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MovieDetailResponseModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'imdb_id')
  String get imdbId => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'tagline')
  String get tagline => throw _privateConstructorUsedError;
  @JsonKey(name: 'homepage')
  String get homepage => throw _privateConstructorUsedError;
  @JsonKey(name: 'overview')
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'genres')
  List<GenreModel> get genres => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'budget')
  double get budget => throw _privateConstructorUsedError;
  @JsonKey(name: 'revenue')
  double get revenue => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'runtime')
  int get runtime => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'belongs_to_collection')
  CollectionModel get collection => throw _privateConstructorUsedError;
  @JsonKey(name: 'production_companies')
  List<CompanyModel> get productionCompanies =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'credits')
  CreditModel get credit => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  MovieImageResponseModel get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'recommendations')
  MoviesResponseModel get recommendations => throw _privateConstructorUsedError;
  @JsonKey(name: 'similar')
  MoviesResponseModel get similar => throw _privateConstructorUsedError;
  @JsonKey(name: 'videos')
  VideoResponseModel get video => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailResponseModelCopyWith<MovieDetailResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailResponseModelCopyWith<$Res> {
  factory $MovieDetailResponseModelCopyWith(MovieDetailResponseModel value,
          $Res Function(MovieDetailResponseModel) then) =
      _$MovieDetailResponseModelCopyWithImpl<$Res, MovieDetailResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'imdb_id') String imdbId,
      @JsonKey(name: 'original_title') String originalTitle,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'tagline') String tagline,
      @JsonKey(name: 'homepage') String homepage,
      @JsonKey(name: 'overview') String overview,
      @JsonKey(name: 'genres') List<GenreModel> genres,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'budget') double budget,
      @JsonKey(name: 'revenue') double revenue,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'runtime') int runtime,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'belongs_to_collection') CollectionModel collection,
      @JsonKey(name: 'production_companies')
      List<CompanyModel> productionCompanies,
      @JsonKey(name: 'credits') CreditModel credit,
      @JsonKey(name: 'images') MovieImageResponseModel images,
      @JsonKey(name: 'recommendations') MoviesResponseModel recommendations,
      @JsonKey(name: 'similar') MoviesResponseModel similar,
      @JsonKey(name: 'videos') VideoResponseModel video});

  $CollectionModelCopyWith<$Res> get collection;
  $CreditModelCopyWith<$Res> get credit;
  $MovieImageResponseModelCopyWith<$Res> get images;
  $MoviesResponseModelCopyWith<$Res> get recommendations;
  $MoviesResponseModelCopyWith<$Res> get similar;
  $VideoResponseModelCopyWith<$Res> get video;
}

/// @nodoc
class _$MovieDetailResponseModelCopyWithImpl<$Res,
        $Val extends MovieDetailResponseModel>
    implements $MovieDetailResponseModelCopyWith<$Res> {
  _$MovieDetailResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imdbId = null,
    Object? originalTitle = null,
    Object? originalLanguage = null,
    Object? title = null,
    Object? tagline = null,
    Object? homepage = null,
    Object? overview = null,
    Object? genres = null,
    Object? backdropPath = null,
    Object? posterPath = null,
    Object? budget = null,
    Object? revenue = null,
    Object? releaseDate = null,
    Object? status = null,
    Object? runtime = null,
    Object? voteAverage = null,
    Object? collection = null,
    Object? productionCompanies = null,
    Object? credit = null,
    Object? images = null,
    Object? recommendations = null,
    Object? similar = null,
    Object? video = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imdbId: null == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: null == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String,
      homepage: null == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreModel>,
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as double,
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      runtime: null == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as CollectionModel,
      productionCompanies: null == productionCompanies
          ? _value.productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<CompanyModel>,
      credit: null == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as CreditModel,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as MovieImageResponseModel,
      recommendations: null == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as MoviesResponseModel,
      similar: null == similar
          ? _value.similar
          : similar // ignore: cast_nullable_to_non_nullable
              as MoviesResponseModel,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as VideoResponseModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CollectionModelCopyWith<$Res> get collection {
    return $CollectionModelCopyWith<$Res>(_value.collection, (value) {
      return _then(_value.copyWith(collection: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CreditModelCopyWith<$Res> get credit {
    return $CreditModelCopyWith<$Res>(_value.credit, (value) {
      return _then(_value.copyWith(credit: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieImageResponseModelCopyWith<$Res> get images {
    return $MovieImageResponseModelCopyWith<$Res>(_value.images, (value) {
      return _then(_value.copyWith(images: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoviesResponseModelCopyWith<$Res> get recommendations {
    return $MoviesResponseModelCopyWith<$Res>(_value.recommendations, (value) {
      return _then(_value.copyWith(recommendations: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoviesResponseModelCopyWith<$Res> get similar {
    return $MoviesResponseModelCopyWith<$Res>(_value.similar, (value) {
      return _then(_value.copyWith(similar: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoResponseModelCopyWith<$Res> get video {
    return $VideoResponseModelCopyWith<$Res>(_value.video, (value) {
      return _then(_value.copyWith(video: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieDetailResponseModelImplCopyWith<$Res>
    implements $MovieDetailResponseModelCopyWith<$Res> {
  factory _$$MovieDetailResponseModelImplCopyWith(
          _$MovieDetailResponseModelImpl value,
          $Res Function(_$MovieDetailResponseModelImpl) then) =
      __$$MovieDetailResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'imdb_id') String imdbId,
      @JsonKey(name: 'original_title') String originalTitle,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'tagline') String tagline,
      @JsonKey(name: 'homepage') String homepage,
      @JsonKey(name: 'overview') String overview,
      @JsonKey(name: 'genres') List<GenreModel> genres,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'budget') double budget,
      @JsonKey(name: 'revenue') double revenue,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'runtime') int runtime,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'belongs_to_collection') CollectionModel collection,
      @JsonKey(name: 'production_companies')
      List<CompanyModel> productionCompanies,
      @JsonKey(name: 'credits') CreditModel credit,
      @JsonKey(name: 'images') MovieImageResponseModel images,
      @JsonKey(name: 'recommendations') MoviesResponseModel recommendations,
      @JsonKey(name: 'similar') MoviesResponseModel similar,
      @JsonKey(name: 'videos') VideoResponseModel video});

  @override
  $CollectionModelCopyWith<$Res> get collection;
  @override
  $CreditModelCopyWith<$Res> get credit;
  @override
  $MovieImageResponseModelCopyWith<$Res> get images;
  @override
  $MoviesResponseModelCopyWith<$Res> get recommendations;
  @override
  $MoviesResponseModelCopyWith<$Res> get similar;
  @override
  $VideoResponseModelCopyWith<$Res> get video;
}

/// @nodoc
class __$$MovieDetailResponseModelImplCopyWithImpl<$Res>
    extends _$MovieDetailResponseModelCopyWithImpl<$Res,
        _$MovieDetailResponseModelImpl>
    implements _$$MovieDetailResponseModelImplCopyWith<$Res> {
  __$$MovieDetailResponseModelImplCopyWithImpl(
      _$MovieDetailResponseModelImpl _value,
      $Res Function(_$MovieDetailResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imdbId = null,
    Object? originalTitle = null,
    Object? originalLanguage = null,
    Object? title = null,
    Object? tagline = null,
    Object? homepage = null,
    Object? overview = null,
    Object? genres = null,
    Object? backdropPath = null,
    Object? posterPath = null,
    Object? budget = null,
    Object? revenue = null,
    Object? releaseDate = null,
    Object? status = null,
    Object? runtime = null,
    Object? voteAverage = null,
    Object? collection = null,
    Object? productionCompanies = null,
    Object? credit = null,
    Object? images = null,
    Object? recommendations = null,
    Object? similar = null,
    Object? video = null,
  }) {
    return _then(_$MovieDetailResponseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imdbId: null == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: null == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String,
      homepage: null == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreModel>,
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as double,
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      runtime: null == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as CollectionModel,
      productionCompanies: null == productionCompanies
          ? _value._productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<CompanyModel>,
      credit: null == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as CreditModel,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as MovieImageResponseModel,
      recommendations: null == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as MoviesResponseModel,
      similar: null == similar
          ? _value.similar
          : similar // ignore: cast_nullable_to_non_nullable
              as MoviesResponseModel,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as VideoResponseModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieDetailResponseModelImpl implements _MovieDetailResponseModel {
  const _$MovieDetailResponseModelImpl(
      {@JsonKey(name: 'id') this.id = -1,
      @JsonKey(name: 'imdb_id') this.imdbId = '',
      @JsonKey(name: 'original_title') this.originalTitle = '',
      @JsonKey(name: 'original_language') this.originalLanguage = '',
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'tagline') this.tagline = '',
      @JsonKey(name: 'homepage') this.homepage = '',
      @JsonKey(name: 'overview') this.overview = '',
      @JsonKey(name: 'genres')
      final List<GenreModel> genres = const <GenreModel>[],
      @JsonKey(name: 'backdrop_path') this.backdropPath = '',
      @JsonKey(name: 'poster_path') this.posterPath = '',
      @JsonKey(name: 'budget') this.budget = 0,
      @JsonKey(name: 'revenue') this.revenue = 0,
      @JsonKey(name: 'release_date') this.releaseDate = '',
      @JsonKey(name: 'status') this.status = '',
      @JsonKey(name: 'runtime') this.runtime = 0,
      @JsonKey(name: 'vote_average') this.voteAverage = 0,
      @JsonKey(name: 'belongs_to_collection')
      this.collection = const CollectionModel(),
      @JsonKey(name: 'production_companies')
      final List<CompanyModel> productionCompanies = const <CompanyModel>[],
      @JsonKey(name: 'credits') this.credit = const CreditModel(),
      @JsonKey(name: 'images') this.images = const MovieImageResponseModel(),
      @JsonKey(name: 'recommendations')
      this.recommendations = const MoviesResponseModel(),
      @JsonKey(name: 'similar') this.similar = const MoviesResponseModel(),
      @JsonKey(name: 'videos') this.video = const VideoResponseModel()})
      : _genres = genres,
        _productionCompanies = productionCompanies;

  factory _$MovieDetailResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDetailResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'imdb_id')
  final String imdbId;
  @override
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @override
  @JsonKey(name: 'original_language')
  final String originalLanguage;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'tagline')
  final String tagline;
  @override
  @JsonKey(name: 'homepage')
  final String homepage;
  @override
  @JsonKey(name: 'overview')
  final String overview;
  final List<GenreModel> _genres;
  @override
  @JsonKey(name: 'genres')
  List<GenreModel> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  @JsonKey(name: 'backdrop_path')
  final String backdropPath;
  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @override
  @JsonKey(name: 'budget')
  final double budget;
  @override
  @JsonKey(name: 'revenue')
  final double revenue;
  @override
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'runtime')
  final int runtime;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  @JsonKey(name: 'belongs_to_collection')
  final CollectionModel collection;
  final List<CompanyModel> _productionCompanies;
  @override
  @JsonKey(name: 'production_companies')
  List<CompanyModel> get productionCompanies {
    if (_productionCompanies is EqualUnmodifiableListView)
      return _productionCompanies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productionCompanies);
  }

  @override
  @JsonKey(name: 'credits')
  final CreditModel credit;
  @override
  @JsonKey(name: 'images')
  final MovieImageResponseModel images;
  @override
  @JsonKey(name: 'recommendations')
  final MoviesResponseModel recommendations;
  @override
  @JsonKey(name: 'similar')
  final MoviesResponseModel similar;
  @override
  @JsonKey(name: 'videos')
  final VideoResponseModel video;

  @override
  String toString() {
    return 'MovieDetailResponseModel(id: $id, imdbId: $imdbId, originalTitle: $originalTitle, originalLanguage: $originalLanguage, title: $title, tagline: $tagline, homepage: $homepage, overview: $overview, genres: $genres, backdropPath: $backdropPath, posterPath: $posterPath, budget: $budget, revenue: $revenue, releaseDate: $releaseDate, status: $status, runtime: $runtime, voteAverage: $voteAverage, collection: $collection, productionCompanies: $productionCompanies, credit: $credit, images: $images, recommendations: $recommendations, similar: $similar, video: $video)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imdbId, imdbId) || other.imdbId == imdbId) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.tagline, tagline) || other.tagline == tagline) &&
            (identical(other.homepage, homepage) ||
                other.homepage == homepage) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.collection, collection) ||
                other.collection == collection) &&
            const DeepCollectionEquality()
                .equals(other._productionCompanies, _productionCompanies) &&
            (identical(other.credit, credit) || other.credit == credit) &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.recommendations, recommendations) ||
                other.recommendations == recommendations) &&
            (identical(other.similar, similar) || other.similar == similar) &&
            (identical(other.video, video) || other.video == video));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        imdbId,
        originalTitle,
        originalLanguage,
        title,
        tagline,
        homepage,
        overview,
        const DeepCollectionEquality().hash(_genres),
        backdropPath,
        posterPath,
        budget,
        revenue,
        releaseDate,
        status,
        runtime,
        voteAverage,
        collection,
        const DeepCollectionEquality().hash(_productionCompanies),
        credit,
        images,
        recommendations,
        similar,
        video
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailResponseModelImplCopyWith<_$MovieDetailResponseModelImpl>
      get copyWith => __$$MovieDetailResponseModelImplCopyWithImpl<
          _$MovieDetailResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDetailResponseModelImplToJson(
      this,
    );
  }
}

abstract class _MovieDetailResponseModel implements MovieDetailResponseModel {
  const factory _MovieDetailResponseModel(
      {@JsonKey(name: 'id') final int id,
      @JsonKey(name: 'imdb_id') final String imdbId,
      @JsonKey(name: 'original_title') final String originalTitle,
      @JsonKey(name: 'original_language') final String originalLanguage,
      @JsonKey(name: 'title') final String title,
      @JsonKey(name: 'tagline') final String tagline,
      @JsonKey(name: 'homepage') final String homepage,
      @JsonKey(name: 'overview') final String overview,
      @JsonKey(name: 'genres') final List<GenreModel> genres,
      @JsonKey(name: 'backdrop_path') final String backdropPath,
      @JsonKey(name: 'poster_path') final String posterPath,
      @JsonKey(name: 'budget') final double budget,
      @JsonKey(name: 'revenue') final double revenue,
      @JsonKey(name: 'release_date') final String releaseDate,
      @JsonKey(name: 'status') final String status,
      @JsonKey(name: 'runtime') final int runtime,
      @JsonKey(name: 'vote_average') final double voteAverage,
      @JsonKey(name: 'belongs_to_collection') final CollectionModel collection,
      @JsonKey(name: 'production_companies')
      final List<CompanyModel> productionCompanies,
      @JsonKey(name: 'credits') final CreditModel credit,
      @JsonKey(name: 'images') final MovieImageResponseModel images,
      @JsonKey(name: 'recommendations')
      final MoviesResponseModel recommendations,
      @JsonKey(name: 'similar') final MoviesResponseModel similar,
      @JsonKey(name: 'videos')
      final VideoResponseModel video}) = _$MovieDetailResponseModelImpl;

  factory _MovieDetailResponseModel.fromJson(Map<String, dynamic> json) =
      _$MovieDetailResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'imdb_id')
  String get imdbId;
  @override
  @JsonKey(name: 'original_title')
  String get originalTitle;
  @override
  @JsonKey(name: 'original_language')
  String get originalLanguage;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'tagline')
  String get tagline;
  @override
  @JsonKey(name: 'homepage')
  String get homepage;
  @override
  @JsonKey(name: 'overview')
  String get overview;
  @override
  @JsonKey(name: 'genres')
  List<GenreModel> get genres;
  @override
  @JsonKey(name: 'backdrop_path')
  String get backdropPath;
  @override
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @override
  @JsonKey(name: 'budget')
  double get budget;
  @override
  @JsonKey(name: 'revenue')
  double get revenue;
  @override
  @JsonKey(name: 'release_date')
  String get releaseDate;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'runtime')
  int get runtime;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(name: 'belongs_to_collection')
  CollectionModel get collection;
  @override
  @JsonKey(name: 'production_companies')
  List<CompanyModel> get productionCompanies;
  @override
  @JsonKey(name: 'credits')
  CreditModel get credit;
  @override
  @JsonKey(name: 'images')
  MovieImageResponseModel get images;
  @override
  @JsonKey(name: 'recommendations')
  MoviesResponseModel get recommendations;
  @override
  @JsonKey(name: 'similar')
  MoviesResponseModel get similar;
  @override
  @JsonKey(name: 'videos')
  VideoResponseModel get video;
  @override
  @JsonKey(ignore: true)
  _$$MovieDetailResponseModelImplCopyWith<_$MovieDetailResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
