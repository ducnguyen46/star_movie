import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_response_model.freezed.dart';
part 'common_response_model.g.dart';

@freezed
class CommonResponseModel with _$CommonResponseModel {
  const factory CommonResponseModel({
    @JsonKey(name: 'success') @Default(false) bool isSuccess,
    @JsonKey(name: 'status_code') @Default(-1) int statusCode,
    @JsonKey(name: 'status_message') @Default('') String message,
  }) = _CommonResponseModel;

  factory CommonResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CommonResponseModelFromJson(json);
}
