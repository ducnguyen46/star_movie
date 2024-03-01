import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/share/constants/constants.dart';

part 'movie_detail.freezed.dart';
part 'movie_detail.g.dart';

@freezed
class MovieDetail with _$MovieDetail {
  const factory MovieDetail({
    required int id,
    required String imdbId,
    required String originalTitle,
    required String originalLanguage,
    required String title,
    required String tagline,
    required String homepage,
    required String overview,
    required List<Genre> genres,
    required String backdropPath,
    required String posterPath,
    required String budget,
    required String revenue,
    required String releaseDate,
    required String status,
    required String runtime,
    required double voteAverage,
    required Collection collection,
    required List<Company> productionCompanies,
    required Credit credit,
    required List<MovieImage> backdropImages,
    required List<MovieImage> logoImages,
    required List<MovieImage> posterImages,
    required List<Movie> recommendations,
    required List<Movie> similar,
    required List<Video> video,

    /// user and movie
    @Default(false) bool isFavorite,
    @Default(false) bool isWatchList,
    @Default(AppConstants.defaultMovieRate) double rate,

    // @JsonKey(name: 'production_countries') @Default('')
  }) = _MovieDetail;

  factory MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailFromJson(json);
}
