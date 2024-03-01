// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieDetail _$MovieDetailFromJson(Map<String, dynamic> json) {
  return _MovieDetail.fromJson(json);
}

/// @nodoc
mixin _$MovieDetail {
  int get id => throw _privateConstructorUsedError;
  String get imdbId => throw _privateConstructorUsedError;
  String get originalTitle => throw _privateConstructorUsedError;
  String get originalLanguage => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get tagline => throw _privateConstructorUsedError;
  String get homepage => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  List<Genre> get genres => throw _privateConstructorUsedError;
  String get backdropPath => throw _privateConstructorUsedError;
  String get posterPath => throw _privateConstructorUsedError;
  String get budget => throw _privateConstructorUsedError;
  String get revenue => throw _privateConstructorUsedError;
  String get releaseDate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get runtime => throw _privateConstructorUsedError;
  double get voteAverage => throw _privateConstructorUsedError;
  Collection get collection => throw _privateConstructorUsedError;
  List<Company> get productionCompanies => throw _privateConstructorUsedError;
  Credit get credit => throw _privateConstructorUsedError;
  List<MovieImage> get backdropImages => throw _privateConstructorUsedError;
  List<MovieImage> get logoImages => throw _privateConstructorUsedError;
  List<MovieImage> get posterImages => throw _privateConstructorUsedError;
  List<Movie> get recommendations => throw _privateConstructorUsedError;
  List<Movie> get similar => throw _privateConstructorUsedError;
  List<Video> get video => throw _privateConstructorUsedError;

  /// user and movie
  bool get isFavorite => throw _privateConstructorUsedError;
  bool get isWatchList => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailCopyWith<MovieDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailCopyWith<$Res> {
  factory $MovieDetailCopyWith(
          MovieDetail value, $Res Function(MovieDetail) then) =
      _$MovieDetailCopyWithImpl<$Res, MovieDetail>;
  @useResult
  $Res call(
      {int id,
      String imdbId,
      String originalTitle,
      String originalLanguage,
      String title,
      String tagline,
      String homepage,
      String overview,
      List<Genre> genres,
      String backdropPath,
      String posterPath,
      String budget,
      String revenue,
      String releaseDate,
      String status,
      String runtime,
      double voteAverage,
      Collection collection,
      List<Company> productionCompanies,
      Credit credit,
      List<MovieImage> backdropImages,
      List<MovieImage> logoImages,
      List<MovieImage> posterImages,
      List<Movie> recommendations,
      List<Movie> similar,
      List<Video> video,
      bool isFavorite,
      bool isWatchList,
      double rate});

  $CollectionCopyWith<$Res> get collection;
  $CreditCopyWith<$Res> get credit;
}

/// @nodoc
class _$MovieDetailCopyWithImpl<$Res, $Val extends MovieDetail>
    implements $MovieDetailCopyWith<$Res> {
  _$MovieDetailCopyWithImpl(this._value, this._then);

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
    Object? backdropImages = null,
    Object? logoImages = null,
    Object? posterImages = null,
    Object? recommendations = null,
    Object? similar = null,
    Object? video = null,
    Object? isFavorite = null,
    Object? isWatchList = null,
    Object? rate = null,
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
              as List<Genre>,
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
              as String,
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as Collection,
      productionCompanies: null == productionCompanies
          ? _value.productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<Company>,
      credit: null == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as Credit,
      backdropImages: null == backdropImages
          ? _value.backdropImages
          : backdropImages // ignore: cast_nullable_to_non_nullable
              as List<MovieImage>,
      logoImages: null == logoImages
          ? _value.logoImages
          : logoImages // ignore: cast_nullable_to_non_nullable
              as List<MovieImage>,
      posterImages: null == posterImages
          ? _value.posterImages
          : posterImages // ignore: cast_nullable_to_non_nullable
              as List<MovieImage>,
      recommendations: null == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      similar: null == similar
          ? _value.similar
          : similar // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      isWatchList: null == isWatchList
          ? _value.isWatchList
          : isWatchList // ignore: cast_nullable_to_non_nullable
              as bool,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CollectionCopyWith<$Res> get collection {
    return $CollectionCopyWith<$Res>(_value.collection, (value) {
      return _then(_value.copyWith(collection: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CreditCopyWith<$Res> get credit {
    return $CreditCopyWith<$Res>(_value.credit, (value) {
      return _then(_value.copyWith(credit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieDetailImplCopyWith<$Res>
    implements $MovieDetailCopyWith<$Res> {
  factory _$$MovieDetailImplCopyWith(
          _$MovieDetailImpl value, $Res Function(_$MovieDetailImpl) then) =
      __$$MovieDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String imdbId,
      String originalTitle,
      String originalLanguage,
      String title,
      String tagline,
      String homepage,
      String overview,
      List<Genre> genres,
      String backdropPath,
      String posterPath,
      String budget,
      String revenue,
      String releaseDate,
      String status,
      String runtime,
      double voteAverage,
      Collection collection,
      List<Company> productionCompanies,
      Credit credit,
      List<MovieImage> backdropImages,
      List<MovieImage> logoImages,
      List<MovieImage> posterImages,
      List<Movie> recommendations,
      List<Movie> similar,
      List<Video> video,
      bool isFavorite,
      bool isWatchList,
      double rate});

  @override
  $CollectionCopyWith<$Res> get collection;
  @override
  $CreditCopyWith<$Res> get credit;
}

/// @nodoc
class __$$MovieDetailImplCopyWithImpl<$Res>
    extends _$MovieDetailCopyWithImpl<$Res, _$MovieDetailImpl>
    implements _$$MovieDetailImplCopyWith<$Res> {
  __$$MovieDetailImplCopyWithImpl(
      _$MovieDetailImpl _value, $Res Function(_$MovieDetailImpl) _then)
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
    Object? backdropImages = null,
    Object? logoImages = null,
    Object? posterImages = null,
    Object? recommendations = null,
    Object? similar = null,
    Object? video = null,
    Object? isFavorite = null,
    Object? isWatchList = null,
    Object? rate = null,
  }) {
    return _then(_$MovieDetailImpl(
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
              as List<Genre>,
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
              as String,
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as Collection,
      productionCompanies: null == productionCompanies
          ? _value._productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<Company>,
      credit: null == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as Credit,
      backdropImages: null == backdropImages
          ? _value._backdropImages
          : backdropImages // ignore: cast_nullable_to_non_nullable
              as List<MovieImage>,
      logoImages: null == logoImages
          ? _value._logoImages
          : logoImages // ignore: cast_nullable_to_non_nullable
              as List<MovieImage>,
      posterImages: null == posterImages
          ? _value._posterImages
          : posterImages // ignore: cast_nullable_to_non_nullable
              as List<MovieImage>,
      recommendations: null == recommendations
          ? _value._recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      similar: null == similar
          ? _value._similar
          : similar // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      video: null == video
          ? _value._video
          : video // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      isWatchList: null == isWatchList
          ? _value.isWatchList
          : isWatchList // ignore: cast_nullable_to_non_nullable
              as bool,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieDetailImpl implements _MovieDetail {
  const _$MovieDetailImpl(
      {required this.id,
      required this.imdbId,
      required this.originalTitle,
      required this.originalLanguage,
      required this.title,
      required this.tagline,
      required this.homepage,
      required this.overview,
      required final List<Genre> genres,
      required this.backdropPath,
      required this.posterPath,
      required this.budget,
      required this.revenue,
      required this.releaseDate,
      required this.status,
      required this.runtime,
      required this.voteAverage,
      required this.collection,
      required final List<Company> productionCompanies,
      required this.credit,
      required final List<MovieImage> backdropImages,
      required final List<MovieImage> logoImages,
      required final List<MovieImage> posterImages,
      required final List<Movie> recommendations,
      required final List<Movie> similar,
      required final List<Video> video,
      this.isFavorite = false,
      this.isWatchList = false,
      this.rate = -1})
      : _genres = genres,
        _productionCompanies = productionCompanies,
        _backdropImages = backdropImages,
        _logoImages = logoImages,
        _posterImages = posterImages,
        _recommendations = recommendations,
        _similar = similar,
        _video = video;

  factory _$MovieDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDetailImplFromJson(json);

  @override
  final int id;
  @override
  final String imdbId;
  @override
  final String originalTitle;
  @override
  final String originalLanguage;
  @override
  final String title;
  @override
  final String tagline;
  @override
  final String homepage;
  @override
  final String overview;
  final List<Genre> _genres;
  @override
  List<Genre> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final String backdropPath;
  @override
  final String posterPath;
  @override
  final String budget;
  @override
  final String revenue;
  @override
  final String releaseDate;
  @override
  final String status;
  @override
  final String runtime;
  @override
  final double voteAverage;
  @override
  final Collection collection;
  final List<Company> _productionCompanies;
  @override
  List<Company> get productionCompanies {
    if (_productionCompanies is EqualUnmodifiableListView)
      return _productionCompanies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productionCompanies);
  }

  @override
  final Credit credit;
  final List<MovieImage> _backdropImages;
  @override
  List<MovieImage> get backdropImages {
    if (_backdropImages is EqualUnmodifiableListView) return _backdropImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_backdropImages);
  }

  final List<MovieImage> _logoImages;
  @override
  List<MovieImage> get logoImages {
    if (_logoImages is EqualUnmodifiableListView) return _logoImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_logoImages);
  }

  final List<MovieImage> _posterImages;
  @override
  List<MovieImage> get posterImages {
    if (_posterImages is EqualUnmodifiableListView) return _posterImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posterImages);
  }

  final List<Movie> _recommendations;
  @override
  List<Movie> get recommendations {
    if (_recommendations is EqualUnmodifiableListView) return _recommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendations);
  }

  final List<Movie> _similar;
  @override
  List<Movie> get similar {
    if (_similar is EqualUnmodifiableListView) return _similar;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_similar);
  }

  final List<Video> _video;
  @override
  List<Video> get video {
    if (_video is EqualUnmodifiableListView) return _video;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_video);
  }

  /// user and movie
  @override
  @JsonKey()
  final bool isFavorite;
  @override
  @JsonKey()
  final bool isWatchList;
  @override
  @JsonKey()
  final double rate;

  @override
  String toString() {
    return 'MovieDetail(id: $id, imdbId: $imdbId, originalTitle: $originalTitle, originalLanguage: $originalLanguage, title: $title, tagline: $tagline, homepage: $homepage, overview: $overview, genres: $genres, backdropPath: $backdropPath, posterPath: $posterPath, budget: $budget, revenue: $revenue, releaseDate: $releaseDate, status: $status, runtime: $runtime, voteAverage: $voteAverage, collection: $collection, productionCompanies: $productionCompanies, credit: $credit, backdropImages: $backdropImages, logoImages: $logoImages, posterImages: $posterImages, recommendations: $recommendations, similar: $similar, video: $video, isFavorite: $isFavorite, isWatchList: $isWatchList, rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailImpl &&
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
            const DeepCollectionEquality()
                .equals(other._backdropImages, _backdropImages) &&
            const DeepCollectionEquality()
                .equals(other._logoImages, _logoImages) &&
            const DeepCollectionEquality()
                .equals(other._posterImages, _posterImages) &&
            const DeepCollectionEquality()
                .equals(other._recommendations, _recommendations) &&
            const DeepCollectionEquality().equals(other._similar, _similar) &&
            const DeepCollectionEquality().equals(other._video, _video) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.isWatchList, isWatchList) ||
                other.isWatchList == isWatchList) &&
            (identical(other.rate, rate) || other.rate == rate));
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
        const DeepCollectionEquality().hash(_backdropImages),
        const DeepCollectionEquality().hash(_logoImages),
        const DeepCollectionEquality().hash(_posterImages),
        const DeepCollectionEquality().hash(_recommendations),
        const DeepCollectionEquality().hash(_similar),
        const DeepCollectionEquality().hash(_video),
        isFavorite,
        isWatchList,
        rate
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailImplCopyWith<_$MovieDetailImpl> get copyWith =>
      __$$MovieDetailImplCopyWithImpl<_$MovieDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDetailImplToJson(
      this,
    );
  }
}

abstract class _MovieDetail implements MovieDetail {
  const factory _MovieDetail(
      {required final int id,
      required final String imdbId,
      required final String originalTitle,
      required final String originalLanguage,
      required final String title,
      required final String tagline,
      required final String homepage,
      required final String overview,
      required final List<Genre> genres,
      required final String backdropPath,
      required final String posterPath,
      required final String budget,
      required final String revenue,
      required final String releaseDate,
      required final String status,
      required final String runtime,
      required final double voteAverage,
      required final Collection collection,
      required final List<Company> productionCompanies,
      required final Credit credit,
      required final List<MovieImage> backdropImages,
      required final List<MovieImage> logoImages,
      required final List<MovieImage> posterImages,
      required final List<Movie> recommendations,
      required final List<Movie> similar,
      required final List<Video> video,
      final bool isFavorite,
      final bool isWatchList,
      final double rate}) = _$MovieDetailImpl;

  factory _MovieDetail.fromJson(Map<String, dynamic> json) =
      _$MovieDetailImpl.fromJson;

  @override
  int get id;
  @override
  String get imdbId;
  @override
  String get originalTitle;
  @override
  String get originalLanguage;
  @override
  String get title;
  @override
  String get tagline;
  @override
  String get homepage;
  @override
  String get overview;
  @override
  List<Genre> get genres;
  @override
  String get backdropPath;
  @override
  String get posterPath;
  @override
  String get budget;
  @override
  String get revenue;
  @override
  String get releaseDate;
  @override
  String get status;
  @override
  String get runtime;
  @override
  double get voteAverage;
  @override
  Collection get collection;
  @override
  List<Company> get productionCompanies;
  @override
  Credit get credit;
  @override
  List<MovieImage> get backdropImages;
  @override
  List<MovieImage> get logoImages;
  @override
  List<MovieImage> get posterImages;
  @override
  List<Movie> get recommendations;
  @override
  List<Movie> get similar;
  @override
  List<Video> get video;
  @override

  /// user and movie
  bool get isFavorite;
  @override
  bool get isWatchList;
  @override
  double get rate;
  @override
  @JsonKey(ignore: true)
  _$$MovieDetailImplCopyWith<_$MovieDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
