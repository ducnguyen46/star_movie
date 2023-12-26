import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_token_model.freezed.dart';
part 'request_token_model.g.dart';

@freezed
class RequestTokenModel with _$RequestTokenModel {
  const factory RequestTokenModel({
    @JsonKey(name: 'success') @Default(false) bool success,
    @JsonKey(name: 'expires_at') @Default('') String expiresAt,
    @JsonKey(name: 'request_token') @Default('') String requestToken,
}) = _RequestTokenModel;

  factory RequestTokenModel.fromJson(Map<String, dynamic> json) => _$RequestTokenModelFromJson(json);
}