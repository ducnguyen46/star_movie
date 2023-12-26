import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'movie_image_response_model.freezed.dart';
part 'movie_image_response_model.g.dart';

@freezed
class MovieImageResponseModel with _$MovieImageResponseModel {
  const factory MovieImageResponseModel({
    @JsonKey(name: 'backdrops')
    @Default(<MovieImageModel>[])
    List<MovieImageModel> backdrops,
    @JsonKey(name: 'logos')
    @Default(<MovieImageModel>[])
    List<MovieImageModel> logos,
    @JsonKey(name: 'posters')
    @Default(<MovieImageModel>[])
    List<MovieImageModel> posters,
  }) = _MovieImageResponseModel;

  factory MovieImageResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MovieImageResponseModelFromJson(json);
}
