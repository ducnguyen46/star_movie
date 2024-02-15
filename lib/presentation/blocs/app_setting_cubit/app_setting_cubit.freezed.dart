// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_setting_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppSettingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() changing,
    required TResult Function(bool? isDarkMode, LanguageCode? language) applied,
    required TResult Function(AppException? appException, String messages)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? changing,
    TResult? Function(bool? isDarkMode, LanguageCode? language)? applied,
    TResult? Function(AppException? appException, String messages)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? changing,
    TResult Function(bool? isDarkMode, LanguageCode? language)? applied,
    TResult Function(AppException? appException, String messages)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppSettingLoading value) loading,
    required TResult Function(AppSettingChanging value) changing,
    required TResult Function(AppSettingApplied value) applied,
    required TResult Function(AppSettingError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppSettingLoading value)? loading,
    TResult? Function(AppSettingChanging value)? changing,
    TResult? Function(AppSettingApplied value)? applied,
    TResult? Function(AppSettingError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppSettingLoading value)? loading,
    TResult Function(AppSettingChanging value)? changing,
    TResult Function(AppSettingApplied value)? applied,
    TResult Function(AppSettingError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingStateCopyWith<$Res> {
  factory $AppSettingStateCopyWith(
          AppSettingState value, $Res Function(AppSettingState) then) =
      _$AppSettingStateCopyWithImpl<$Res, AppSettingState>;
}

/// @nodoc
class _$AppSettingStateCopyWithImpl<$Res, $Val extends AppSettingState>
    implements $AppSettingStateCopyWith<$Res> {
  _$AppSettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppSettingLoadingImplCopyWith<$Res> {
  factory _$$AppSettingLoadingImplCopyWith(_$AppSettingLoadingImpl value,
          $Res Function(_$AppSettingLoadingImpl) then) =
      __$$AppSettingLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppSettingLoadingImplCopyWithImpl<$Res>
    extends _$AppSettingStateCopyWithImpl<$Res, _$AppSettingLoadingImpl>
    implements _$$AppSettingLoadingImplCopyWith<$Res> {
  __$$AppSettingLoadingImplCopyWithImpl(_$AppSettingLoadingImpl _value,
      $Res Function(_$AppSettingLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppSettingLoadingImpl implements AppSettingLoading {
  const _$AppSettingLoadingImpl();

  @override
  String toString() {
    return 'AppSettingState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppSettingLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() changing,
    required TResult Function(bool? isDarkMode, LanguageCode? language) applied,
    required TResult Function(AppException? appException, String messages)
        error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? changing,
    TResult? Function(bool? isDarkMode, LanguageCode? language)? applied,
    TResult? Function(AppException? appException, String messages)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? changing,
    TResult Function(bool? isDarkMode, LanguageCode? language)? applied,
    TResult Function(AppException? appException, String messages)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppSettingLoading value) loading,
    required TResult Function(AppSettingChanging value) changing,
    required TResult Function(AppSettingApplied value) applied,
    required TResult Function(AppSettingError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppSettingLoading value)? loading,
    TResult? Function(AppSettingChanging value)? changing,
    TResult? Function(AppSettingApplied value)? applied,
    TResult? Function(AppSettingError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppSettingLoading value)? loading,
    TResult Function(AppSettingChanging value)? changing,
    TResult Function(AppSettingApplied value)? applied,
    TResult Function(AppSettingError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AppSettingLoading implements AppSettingState {
  const factory AppSettingLoading() = _$AppSettingLoadingImpl;
}

/// @nodoc
abstract class _$$AppSettingChangingImplCopyWith<$Res> {
  factory _$$AppSettingChangingImplCopyWith(_$AppSettingChangingImpl value,
          $Res Function(_$AppSettingChangingImpl) then) =
      __$$AppSettingChangingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppSettingChangingImplCopyWithImpl<$Res>
    extends _$AppSettingStateCopyWithImpl<$Res, _$AppSettingChangingImpl>
    implements _$$AppSettingChangingImplCopyWith<$Res> {
  __$$AppSettingChangingImplCopyWithImpl(_$AppSettingChangingImpl _value,
      $Res Function(_$AppSettingChangingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppSettingChangingImpl implements AppSettingChanging {
  const _$AppSettingChangingImpl();

  @override
  String toString() {
    return 'AppSettingState.changing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppSettingChangingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() changing,
    required TResult Function(bool? isDarkMode, LanguageCode? language) applied,
    required TResult Function(AppException? appException, String messages)
        error,
  }) {
    return changing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? changing,
    TResult? Function(bool? isDarkMode, LanguageCode? language)? applied,
    TResult? Function(AppException? appException, String messages)? error,
  }) {
    return changing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? changing,
    TResult Function(bool? isDarkMode, LanguageCode? language)? applied,
    TResult Function(AppException? appException, String messages)? error,
    required TResult orElse(),
  }) {
    if (changing != null) {
      return changing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppSettingLoading value) loading,
    required TResult Function(AppSettingChanging value) changing,
    required TResult Function(AppSettingApplied value) applied,
    required TResult Function(AppSettingError value) error,
  }) {
    return changing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppSettingLoading value)? loading,
    TResult? Function(AppSettingChanging value)? changing,
    TResult? Function(AppSettingApplied value)? applied,
    TResult? Function(AppSettingError value)? error,
  }) {
    return changing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppSettingLoading value)? loading,
    TResult Function(AppSettingChanging value)? changing,
    TResult Function(AppSettingApplied value)? applied,
    TResult Function(AppSettingError value)? error,
    required TResult orElse(),
  }) {
    if (changing != null) {
      return changing(this);
    }
    return orElse();
  }
}

abstract class AppSettingChanging implements AppSettingState {
  const factory AppSettingChanging() = _$AppSettingChangingImpl;
}

/// @nodoc
abstract class _$$AppSettingAppliedImplCopyWith<$Res> {
  factory _$$AppSettingAppliedImplCopyWith(_$AppSettingAppliedImpl value,
          $Res Function(_$AppSettingAppliedImpl) then) =
      __$$AppSettingAppliedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? isDarkMode, LanguageCode? language});
}

/// @nodoc
class __$$AppSettingAppliedImplCopyWithImpl<$Res>
    extends _$AppSettingStateCopyWithImpl<$Res, _$AppSettingAppliedImpl>
    implements _$$AppSettingAppliedImplCopyWith<$Res> {
  __$$AppSettingAppliedImplCopyWithImpl(_$AppSettingAppliedImpl _value,
      $Res Function(_$AppSettingAppliedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = freezed,
    Object? language = freezed,
  }) {
    return _then(_$AppSettingAppliedImpl(
      isDarkMode: freezed == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as LanguageCode?,
    ));
  }
}

/// @nodoc

class _$AppSettingAppliedImpl implements AppSettingApplied {
  const _$AppSettingAppliedImpl({this.isDarkMode, this.language});

  @override
  final bool? isDarkMode;
  @override
  final LanguageCode? language;

  @override
  String toString() {
    return 'AppSettingState.applied(isDarkMode: $isDarkMode, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingAppliedImpl &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkMode, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingAppliedImplCopyWith<_$AppSettingAppliedImpl> get copyWith =>
      __$$AppSettingAppliedImplCopyWithImpl<_$AppSettingAppliedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() changing,
    required TResult Function(bool? isDarkMode, LanguageCode? language) applied,
    required TResult Function(AppException? appException, String messages)
        error,
  }) {
    return applied(isDarkMode, language);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? changing,
    TResult? Function(bool? isDarkMode, LanguageCode? language)? applied,
    TResult? Function(AppException? appException, String messages)? error,
  }) {
    return applied?.call(isDarkMode, language);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? changing,
    TResult Function(bool? isDarkMode, LanguageCode? language)? applied,
    TResult Function(AppException? appException, String messages)? error,
    required TResult orElse(),
  }) {
    if (applied != null) {
      return applied(isDarkMode, language);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppSettingLoading value) loading,
    required TResult Function(AppSettingChanging value) changing,
    required TResult Function(AppSettingApplied value) applied,
    required TResult Function(AppSettingError value) error,
  }) {
    return applied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppSettingLoading value)? loading,
    TResult? Function(AppSettingChanging value)? changing,
    TResult? Function(AppSettingApplied value)? applied,
    TResult? Function(AppSettingError value)? error,
  }) {
    return applied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppSettingLoading value)? loading,
    TResult Function(AppSettingChanging value)? changing,
    TResult Function(AppSettingApplied value)? applied,
    TResult Function(AppSettingError value)? error,
    required TResult orElse(),
  }) {
    if (applied != null) {
      return applied(this);
    }
    return orElse();
  }
}

abstract class AppSettingApplied implements AppSettingState {
  const factory AppSettingApplied(
      {final bool? isDarkMode,
      final LanguageCode? language}) = _$AppSettingAppliedImpl;

  bool? get isDarkMode;
  LanguageCode? get language;
  @JsonKey(ignore: true)
  _$$AppSettingAppliedImplCopyWith<_$AppSettingAppliedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppSettingErrorImplCopyWith<$Res> {
  factory _$$AppSettingErrorImplCopyWith(_$AppSettingErrorImpl value,
          $Res Function(_$AppSettingErrorImpl) then) =
      __$$AppSettingErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppException? appException, String messages});
}

/// @nodoc
class __$$AppSettingErrorImplCopyWithImpl<$Res>
    extends _$AppSettingStateCopyWithImpl<$Res, _$AppSettingErrorImpl>
    implements _$$AppSettingErrorImplCopyWith<$Res> {
  __$$AppSettingErrorImplCopyWithImpl(
      _$AppSettingErrorImpl _value, $Res Function(_$AppSettingErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appException = freezed,
    Object? messages = null,
  }) {
    return _then(_$AppSettingErrorImpl(
      appException: freezed == appException
          ? _value.appException
          : appException // ignore: cast_nullable_to_non_nullable
              as AppException?,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppSettingErrorImpl implements AppSettingError {
  const _$AppSettingErrorImpl({this.appException, this.messages = ''});

  @override
  final AppException? appException;
  @override
  @JsonKey()
  final String messages;

  @override
  String toString() {
    return 'AppSettingState.error(appException: $appException, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingErrorImpl &&
            (identical(other.appException, appException) ||
                other.appException == appException) &&
            (identical(other.messages, messages) ||
                other.messages == messages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appException, messages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingErrorImplCopyWith<_$AppSettingErrorImpl> get copyWith =>
      __$$AppSettingErrorImplCopyWithImpl<_$AppSettingErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() changing,
    required TResult Function(bool? isDarkMode, LanguageCode? language) applied,
    required TResult Function(AppException? appException, String messages)
        error,
  }) {
    return error(appException, messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? changing,
    TResult? Function(bool? isDarkMode, LanguageCode? language)? applied,
    TResult? Function(AppException? appException, String messages)? error,
  }) {
    return error?.call(appException, messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? changing,
    TResult Function(bool? isDarkMode, LanguageCode? language)? applied,
    TResult Function(AppException? appException, String messages)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(appException, messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppSettingLoading value) loading,
    required TResult Function(AppSettingChanging value) changing,
    required TResult Function(AppSettingApplied value) applied,
    required TResult Function(AppSettingError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppSettingLoading value)? loading,
    TResult? Function(AppSettingChanging value)? changing,
    TResult? Function(AppSettingApplied value)? applied,
    TResult? Function(AppSettingError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppSettingLoading value)? loading,
    TResult Function(AppSettingChanging value)? changing,
    TResult Function(AppSettingApplied value)? applied,
    TResult Function(AppSettingError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AppSettingError implements AppSettingState {
  const factory AppSettingError(
      {final AppException? appException,
      final String messages}) = _$AppSettingErrorImpl;

  AppException? get appException;
  String get messages;
  @JsonKey(ignore: true)
  _$$AppSettingErrorImplCopyWith<_$AppSettingErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
