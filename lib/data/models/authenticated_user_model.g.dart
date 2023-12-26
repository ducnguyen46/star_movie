// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticated_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthenticatedUserModel _$$_AuthenticatedUserModelFromJson(
        Map<String, dynamic> json) =>
    _$_AuthenticatedUserModel(
      isAuthenticatedUser: json['is_authenticated'] as bool? ?? false,
      sessionId: json['session_id'] as String? ?? '',
      guestSessionId: json['guest_session_id'] as String? ?? '',
      expiresAt: json['expires_at'] as String? ?? '',
    );

Map<String, dynamic> _$$_AuthenticatedUserModelToJson(
        _$_AuthenticatedUserModel instance) =>
    <String, dynamic>{
      'is_authenticated': instance.isAuthenticatedUser,
      'session_id': instance.sessionId,
      'guest_session_id': instance.guestSessionId,
      'expires_at': instance.expiresAt,
    };
