// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_session_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GuestSessionResponseModel _$$_GuestSessionResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_GuestSessionResponseModel(
      guestSessionId: json['guest_session_id'] as String? ?? '',
      expiresAt: json['expires_at'] as String? ?? '',
    );

Map<String, dynamic> _$$_GuestSessionResponseModelToJson(
        _$_GuestSessionResponseModel instance) =>
    <String, dynamic>{
      'guest_session_id': instance.guestSessionId,
      'expires_at': instance.expiresAt,
    };
