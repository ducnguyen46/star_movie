import 'package:freezed_annotation/freezed_annotation.dart';
import 'movie_model.dart';

part 'movies_response_model.freezed.dart';
part 'movies_response_model.g.dart';

@freezed
class MoviesResponseModel with _$MoviesResponseModel {
  const factory MoviesResponseModel({
    @JsonKey(name: 'page') @Default(0) int page,
    @JsonKey(name: 'total_pages') @Default(0) int totalPage,
    @JsonKey(name: 'results') @Default(<MovieModel>[]) List<MovieModel> movies,
  }) = _MoviesResponseModel;

  factory MoviesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MoviesResponseModelFromJson(json);
}
