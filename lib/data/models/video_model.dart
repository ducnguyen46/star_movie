import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

@freezed
class VideoModel with _$VideoModel {
  const factory VideoModel({
    @JsonKey(name: 'name') @Default('') String title,
    @JsonKey(name: 'key') @Default('') String key,
    @JsonKey(name: 'site') @Default('') String site,
    @JsonKey(name: 'official') @Default(false) bool isOfficialVid,
  }) = _VideoModel;

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);
}
