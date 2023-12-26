// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticated_user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthenticatedUserData _$$_AuthenticatedUserDataFromJson(
        Map<String, dynamic> json) =>
    _$_AuthenticatedUserData(
      isAuthenticatedUser: json['isAuthenticatedUser'] as bool? ?? false,
      sessionId: json['sessionId'] as String? ?? '',
      guestSessionId: json['guestSessionId'] as String? ?? '',
      expiresAt: json['expiresAt'] as String? ?? '',
    );

Map<String, dynamic> _$$_AuthenticatedUserDataToJson(
        _$_AuthenticatedUserData instance) =>
    <String, dynamic>{
      'isAuthenticatedUser': instance.isAuthenticatedUser,
      'sessionId': instance.sessionId,
      'guestSessionId': instance.guestSessionId,
      'expiresAt': instance.expiresAt,
    };
