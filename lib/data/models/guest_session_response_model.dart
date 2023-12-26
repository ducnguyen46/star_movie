import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest_session_response_model.freezed.dart';
part 'guest_session_response_model.g.dart';

@freezed
class GuestSessionResponseModel with _$GuestSessionResponseModel {
  const factory GuestSessionResponseModel({
    @JsonKey(name: 'guest_session_id') @Default('') String guestSessionId,
    @JsonKey(name: 'expires_at') @Default('') String expiresAt,
  }) = _GuestSessionResponseModel;

  factory GuestSessionResponseModel.fromJson(Map<String, dynamic> json) => _$GuestSessionResponseModelFromJson(json);
}
