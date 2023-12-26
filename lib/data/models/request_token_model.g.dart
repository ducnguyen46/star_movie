// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestTokenModel _$$_RequestTokenModelFromJson(Map<String, dynamic> json) =>
    _$_RequestTokenModel(
      success: json['success'] as bool? ?? false,
      expiresAt: json['expires_at'] as String? ?? '',
      requestToken: json['request_token'] as String? ?? '',
    );

Map<String, dynamic> _$$_RequestTokenModelToJson(
        _$_RequestTokenModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'expires_at': instance.expiresAt,
      'request_token': instance.requestToken,
    };
