import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieModel with _$MovieModel {
  const factory MovieModel({
    @JsonKey(name: 'id') @Default(-1) int id,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'poster_path') @Default('') String posterPath,
    @JsonKey(name: 'backdrop_path') @Default('') String backdropPath,
    @JsonKey(name: 'vote_average') @Default(0) double voteAverage,
    @JsonKey(name: 'genre_ids') @Default(<int>[]) List<int> genreIds,
    @JsonKey(name: 'release_date') @Default('') String releaseDate,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}
