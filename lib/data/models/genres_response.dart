import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:star_movie/data/models/models.dart';

part 'genres_response.freezed.dart';
part 'genres_response.g.dart';

@freezed
class GenresResponse with _$GenresResponse {
  const factory GenresResponse({
    @JsonKey(name: 'genres') @Default(<GenreModel>[]) List<GenreModel> genres,
  }) = _GenresResponse;

  factory GenresResponse.fromJson(Map<String, dynamic> json) =>
      _$GenresResponseFromJson(json);
}
