import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:star_movie/share/exceptions/exceptions.dart';

part 'error_state_common.freezed.dart';

@freezed
class ErrorStateCommon with _$ErrorStateCommon {
  const factory ErrorStateCommon({
    @Default('') String errorMessages,
    AppException? exception,
    void Function()? onRetry,
  }) = _ErrorStateCommon;
}
