import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:star_movie/share/constants/constants.dart';

part 'cast.freezed.dart';
part 'cast.g.dart';

@freezed
class Cast with _$Cast {
  const factory Cast({
    required int id,
    required int castId,
    required String creditId,
    required String name,
    required String character,
    required String knowForDepartment,
    required String profilePath,
    required double popularity,
    required int order,
    required Gender gender,
  }) = _Cast;

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
}
