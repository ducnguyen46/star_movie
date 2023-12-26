import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:star_movie/share/constants/constants.dart';

part 'video.freezed.dart';
part 'video.g.dart';

@freezed
class Video with _$Video {
  const factory Video({
    required String title,
    required String key,
    required VideoSite site,
    required bool isOfficialVid,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}
