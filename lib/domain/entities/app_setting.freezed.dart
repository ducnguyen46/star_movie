// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppSetting {
  LanguageCode get languageCode => throw _privateConstructorUsedError;
  bool get isDarkMode => throw _privateConstructorUsedError;
  bool get isOpened => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppSettingCopyWith<AppSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingCopyWith<$Res> {
  factory $AppSettingCopyWith(
          AppSetting value, $Res Function(AppSetting) then) =
      _$AppSettingCopyWithImpl<$Res, AppSetting>;
  @useResult
  $Res call({LanguageCode languageCode, bool isDarkMode, bool isOpened});
}

/// @nodoc
class _$AppSettingCopyWithImpl<$Res, $Val extends AppSetting>
    implements $AppSettingCopyWith<$Res> {
  _$AppSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
    Object? isDarkMode = null,
    Object? isOpened = null,
  }) {
    return _then(_value.copyWith(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as LanguageCode,
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      isOpened: null == isOpened
          ? _value.isOpened
          : isOpened // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppSettingCopyWith<$Res>
    implements $AppSettingCopyWith<$Res> {
  factory _$$_AppSettingCopyWith(
          _$_AppSetting value, $Res Function(_$_AppSetting) then) =
      __$$_AppSettingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LanguageCode languageCode, bool isDarkMode, bool isOpened});
}

/// @nodoc
class __$$_AppSettingCopyWithImpl<$Res>
    extends _$AppSettingCopyWithImpl<$Res, _$_AppSetting>
    implements _$$_AppSettingCopyWith<$Res> {
  __$$_AppSettingCopyWithImpl(
      _$_AppSetting _value, $Res Function(_$_AppSetting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
    Object? isDarkMode = null,
    Object? isOpened = null,
  }) {
    return _then(_$_AppSetting(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as LanguageCode,
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      isOpened: null == isOpened
          ? _value.isOpened
          : isOpened // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppSetting implements _AppSetting {
  const _$_AppSetting(
      {this.languageCode = LanguageCode.en,
      this.isDarkMode = false,
      this.isOpened = false});

  @override
  @JsonKey()
  final LanguageCode languageCode;
  @override
  @JsonKey()
  final bool isDarkMode;
  @override
  @JsonKey()
  final bool isOpened;

  @override
  String toString() {
    return 'AppSetting(languageCode: $languageCode, isDarkMode: $isDarkMode, isOpened: $isOpened)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppSetting &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode) &&
            (identical(other.isOpened, isOpened) ||
                other.isOpened == isOpened));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, languageCode, isDarkMode, isOpened);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppSettingCopyWith<_$_AppSetting> get copyWith =>
      __$$_AppSettingCopyWithImpl<_$_AppSetting>(this, _$identity);
}

abstract class _AppSetting implements AppSetting {
  const factory _AppSetting(
      {final LanguageCode languageCode,
      final bool isDarkMode,
      final bool isOpened}) = _$_AppSetting;

  @override
  LanguageCode get languageCode;
  @override
  bool get isDarkMode;
  @override
  bool get isOpened;
  @override
  @JsonKey(ignore: true)
  _$$_AppSettingCopyWith<_$_AppSetting> get copyWith =>
      throw _privateConstructorUsedError;
}
