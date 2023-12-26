import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'credit_model.freezed.dart';
part 'credit_model.g.dart';

@freezed
class CreditModel with _$CreditModel {
  const factory CreditModel({
    @JsonKey(name: 'cast') @Default(<CastModel>[]) List<CastModel> casts,
    @JsonKey(name: 'crew') @Default(<CrewModel>[]) List<CrewModel> crews,
  }) = _CreditModel;

  factory CreditModel.fromJson(Map<String, dynamic> json) =>
      _$CreditModelFromJson(json);
}
