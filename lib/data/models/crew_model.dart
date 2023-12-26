import 'package:freezed_annotation/freezed_annotation.dart';

part 'crew_model.freezed.dart';
part 'crew_model.g.dart';

@freezed
class CrewModel with _$CrewModel {
  const factory CrewModel({
    @JsonKey(name: 'id') @Default(-1) int id,
    @JsonKey(name: 'cast_id') @Default(-1) int castId,
    @JsonKey(name: 'credit_id') @Default('') String creditId,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'job') @Default('') String job,
    @JsonKey(name: 'department') @Default('') String department,
    @JsonKey(name: 'profile_path') @Default('') String profilePath,
    @JsonKey(name: 'popularity') @Default(0) double popularity,
    @JsonKey(name: 'gender') @Default(-1) int gender,
  }) = _CrewModel;

  factory CrewModel.fromJson(Map<String, dynamic> json) =>
      _$CrewModelFromJson(json);
}
