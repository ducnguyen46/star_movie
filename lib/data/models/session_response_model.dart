import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_response_model.freezed.dart';
part 'session_response_model.g.dart';

@freezed
class SessionResponseModel with _$SessionResponseModel {
  const factory SessionResponseModel({
    @JsonKey(name: 'session_id') @Default('') String sessionId,
  }) = _SessionResponseModel;

  factory SessionResponseModel.fromJson(Map<String, dynamic> json) => _$SessionResponseModelFromJson(json);
}
