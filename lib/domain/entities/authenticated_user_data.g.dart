// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticated_user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticatedUserDataImpl _$$AuthenticatedUserDataImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticatedUserDataImpl(
      isAuthenticatedUser: json['isAuthenticatedUser'] as bool? ?? false,
      sessionId: json['sessionId'] as String? ?? '',
      guestSessionId: json['guestSessionId'] as String? ?? '',
      expiresAt: json['expiresAt'] as String? ?? '',
    );

Map<String, dynamic> _$$AuthenticatedUserDataImplToJson(
        _$AuthenticatedUserDataImpl instance) =>
    <String, dynamic>{
      'isAuthenticatedUser': instance.isAuthenticatedUser,
      'sessionId': instance.sessionId,
      'guestSessionId': instance.guestSessionId,
      'expiresAt': instance.expiresAt,
    };
