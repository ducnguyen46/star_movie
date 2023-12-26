// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_state_common.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ErrorStateCommon {
  String get errorMessages => throw _privateConstructorUsedError;
  AppException? get exception => throw _privateConstructorUsedError;
  void Function()? get onRetry => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ErrorStateCommonCopyWith<ErrorStateCommon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorStateCommonCopyWith<$Res> {
  factory $ErrorStateCommonCopyWith(
          ErrorStateCommon value, $Res Function(ErrorStateCommon) then) =
      _$ErrorStateCommonCopyWithImpl<$Res, ErrorStateCommon>;
  @useResult
  $Res call(
      {String errorMessages,
      AppException? exception,
      void Function()? onRetry});
}

/// @nodoc
class _$ErrorStateCommonCopyWithImpl<$Res, $Val extends ErrorStateCommon>
    implements $ErrorStateCommonCopyWith<$Res> {
  _$ErrorStateCommonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessages = null,
    Object? exception = freezed,
    Object? onRetry = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessages: null == errorMessages
          ? _value.errorMessages
          : errorMessages // ignore: cast_nullable_to_non_nullable
              as String,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as AppException?,
      onRetry: freezed == onRetry
          ? _value.onRetry
          : onRetry // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ErrorStateCommonCopyWith<$Res>
    implements $ErrorStateCommonCopyWith<$Res> {
  factory _$$_ErrorStateCommonCopyWith(
          _$_ErrorStateCommon value, $Res Function(_$_ErrorStateCommon) then) =
      __$$_ErrorStateCommonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String errorMessages,
      AppException? exception,
      void Function()? onRetry});
}

/// @nodoc
class __$$_ErrorStateCommonCopyWithImpl<$Res>
    extends _$ErrorStateCommonCopyWithImpl<$Res, _$_ErrorStateCommon>
    implements _$$_ErrorStateCommonCopyWith<$Res> {
  __$$_ErrorStateCommonCopyWithImpl(
      _$_ErrorStateCommon _value, $Res Function(_$_ErrorStateCommon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessages = null,
    Object? exception = freezed,
    Object? onRetry = freezed,
  }) {
    return _then(_$_ErrorStateCommon(
      errorMessages: null == errorMessages
          ? _value.errorMessages
          : errorMessages // ignore: cast_nullable_to_non_nullable
              as String,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as AppException?,
      onRetry: freezed == onRetry
          ? _value.onRetry
          : onRetry // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ));
  }
}

/// @nodoc

class _$_ErrorStateCommon implements _ErrorStateCommon {
  const _$_ErrorStateCommon(
      {this.errorMessages = '', this.exception, this.onRetry});

  @override
  @JsonKey()
  final String errorMessages;
  @override
  final AppException? exception;
  @override
  final void Function()? onRetry;

  @override
  String toString() {
    return 'ErrorStateCommon(errorMessages: $errorMessages, exception: $exception, onRetry: $onRetry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorStateCommon &&
            (identical(other.errorMessages, errorMessages) ||
                other.errorMessages == errorMessages) &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.onRetry, onRetry) || other.onRetry == onRetry));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, errorMessages, exception, onRetry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorStateCommonCopyWith<_$_ErrorStateCommon> get copyWith =>
      __$$_ErrorStateCommonCopyWithImpl<_$_ErrorStateCommon>(this, _$identity);
}

abstract class _ErrorStateCommon implements ErrorStateCommon {
  const factory _ErrorStateCommon(
      {final String errorMessages,
      final AppException? exception,
      final void Function()? onRetry}) = _$_ErrorStateCommon;

  @override
  String get errorMessages;
  @override
  AppException? get exception;
  @override
  void Function()? get onRetry;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorStateCommonCopyWith<_$_ErrorStateCommon> get copyWith =>
      throw _privateConstructorUsedError;
}
