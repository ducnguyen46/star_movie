import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_response.freezed.dart';
part 'common_response.g.dart';

@freezed
class CommonResponse with _$CommonResponse {
  const factory CommonResponse({
    @Default(false) bool isSuccess,
    @Default(-1) int statusCode,
    @Default('') String message,
  }) = _CommonResponse;

  factory CommonResponse.fromJson(Map<String, dynamic> json) =>
      _$CommonResponseFromJson(json);
}
