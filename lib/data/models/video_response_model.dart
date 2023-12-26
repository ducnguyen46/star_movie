import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'video_response_model.freezed.dart';
part 'video_response_model.g.dart';

@freezed
class VideoResponseModel with _$VideoResponseModel {
  const factory VideoResponseModel({
    @JsonKey(name: 'results') @Default(<VideoModel>[]) List<VideoModel> videos,
  }) = _VideoResponseModel;

  factory VideoResponseModel.fromJson(Map<String, dynamic> json) =>
      _$VideoResponseModelFromJson(json);
}
