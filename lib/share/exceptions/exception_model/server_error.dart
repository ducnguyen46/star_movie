// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_error.freezed.dart';
part 'server_error.g.dart';

@freezed
class ServerError with _$ServerError {
  const factory ServerError({
    @JsonKey(name: 'success') @Default(false) bool success,
    @JsonKey(name: 'status_code') @Default(-1) int statusCode,
    @JsonKey(name: 'status_message') @Default('') String statusMessage,
  }) = _ServerError;

  factory ServerError.fromJson(Map<String, dynamic> json) =>
      _$ServerErrorFromJson(json);
}
