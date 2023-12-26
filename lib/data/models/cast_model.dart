import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast_model.freezed.dart';
part 'cast_model.g.dart';

@freezed
class CastModel with _$CastModel {
  const factory CastModel({
    @JsonKey(name: 'id') @Default(-1) int id,
    @JsonKey(name: 'cast_id') @Default(-1) int castId,
    @JsonKey(name: 'credit_id') @Default('') String creditId,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'character') @Default('') String character,
    @JsonKey(name: 'known_for_department')
    @Default('')
    String knowForDepartment,
    @JsonKey(name: 'profile_path') @Default('') String profilePath,
    @JsonKey(name: 'popularity') @Default(0) double popularity,
    @JsonKey(name: 'order') @Default(-1) int order,
    @JsonKey(name: 'gender') @Default(-1) int gender,
  }) = _CastModel;

  factory CastModel.fromJson(Map<String, dynamic> json) =>
      _$CastModelFromJson(json);
}
