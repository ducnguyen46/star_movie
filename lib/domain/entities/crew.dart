import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:star_movie/share/constants/constants.dart';

part 'crew.freezed.dart';
part 'crew.g.dart';

@freezed
class Crew with _$Crew {
  const factory Crew({
    required int id,
    required int castId,
    required String creditId,
    required String name,
    required String job,
    required String department,
    required String profilePath,
    required double popularity,
    required Gender gender,
  }) = _Crew;

  factory Crew.fromJson(Map<String, dynamic> json) => _$CrewFromJson(json);
}
