import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'movie_detail_response_model.freezed.dart';

part 'movie_detail_response_model.g.dart';

@freezed
class MovieDetailResponseModel with _$MovieDetailResponseModel {
  const factory MovieDetailResponseModel({
    @JsonKey(name: 'id') @Default(-1) int id,
    @JsonKey(name: 'imdb_id') @Default('') String imdbId,
    @JsonKey(name: 'original_title') @Default('') String originalTitle,
    @JsonKey(name: 'original_language') @Default('') String originalLanguage,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'tagline') @Default('') String tagline,
    @JsonKey(name: 'homepage') @Default('') String homepage,
    @JsonKey(name: 'overview') @Default('') String overview,
    @JsonKey(name: 'genres') @Default(<GenreModel>[]) List<GenreModel> genres,
    @JsonKey(name: 'backdrop_path') @Default('') String backdropPath,
    @JsonKey(name: 'poster_path') @Default('') String posterPath,
    @JsonKey(name: 'budget') @Default(0) double budget,
    @JsonKey(name: 'revenue') @Default(0) double revenue,
    @JsonKey(name: 'release_date') @Default('') String releaseDate,
    @JsonKey(name: 'status') @Default('') String status,
    @JsonKey(name: 'runtime') @Default(0) int runtime,
    @JsonKey(name: 'vote_average') @Default(0) double voteAverage,
    @JsonKey(name: 'belongs_to_collection')
    @Default(CollectionModel())
    CollectionModel collection,
    @JsonKey(name: 'production_companies')
    @Default(<CompanyModel>[])
    List<CompanyModel> productionCompanies,
    @JsonKey(name: 'credits') @Default(CreditModel()) CreditModel credit,
    @JsonKey(name: 'images')
    @Default(MovieImageResponseModel())
    MovieImageResponseModel images,
    @JsonKey(name: 'recommendations')
    @Default(MoviesResponseModel())
    MoviesResponseModel recommendations,
    @JsonKey(name: 'similar')
    @Default(MoviesResponseModel())
    MoviesResponseModel similar,
    @JsonKey(name: 'videos')
    @Default(VideoResponseModel())
    VideoResponseModel video,

    // @JsonKey(name: 'production_countries') @Default('')
  }) = _MovieDetailResponseModel;

  factory MovieDetailResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailResponseModelFromJson(json);
}
