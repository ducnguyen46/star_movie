import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_image_model.freezed.dart';
part 'movie_image_model.g.dart';

@freezed
class MovieImageModel with _$MovieImageModel {
  const factory MovieImageModel({
    @JsonKey(name: 'height') @Default(0) int height,
    @JsonKey(name: 'width') @Default(0) int width,
    @JsonKey(name: 'file_path') @Default('') String filePath,
  }) = _MovieImageModel;

  factory MovieImageModel.fromJson(Map<String, dynamic> json) =>
      _$MovieImageModelFromJson(json);
}
