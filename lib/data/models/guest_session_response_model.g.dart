// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_session_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GuestSessionResponseModelImpl _$$GuestSessionResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GuestSessionResponseModelImpl(
      guestSessionId: json['guest_session_id'] as String? ?? '',
      expiresAt: json['expires_at'] as String? ?? '',
    );

Map<String, dynamic> _$$GuestSessionResponseModelImplToJson(
        _$GuestSessionResponseModelImpl instance) =>
    <String, dynamic>{
      'guest_session_id': instance.guestSessionId,
      'expires_at': instance.expiresAt,
    };
