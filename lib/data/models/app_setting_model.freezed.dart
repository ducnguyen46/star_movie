// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppSettingModel _$AppSettingModelFromJson(Map<String, dynamic> json) {
  return _AppSettingModel.fromJson(json);
}

/// @nodoc
mixin _$AppSettingModel {
  @JsonKey(name: 'language_code')
  String get languageCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_dark_mode')
  bool get isDarkMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_opened')
  bool get isOpened => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppSettingModelCopyWith<AppSettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingModelCopyWith<$Res> {
  factory $AppSettingModelCopyWith(
          AppSettingModel value, $Res Function(AppSettingModel) then) =
      _$AppSettingModelCopyWithImpl<$Res, AppSettingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'language_code') String languageCode,
      @JsonKey(name: 'is_dark_mode') bool isDarkMode,
      @JsonKey(name: 'is_opened') bool isOpened});
}

/// @nodoc
class _$AppSettingModelCopyWithImpl<$Res, $Val extends AppSettingModel>
    implements $AppSettingModelCopyWith<$Res> {
  _$AppSettingModelCopyWithImpl(this._value, this._then);

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
              as String,
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
abstract class _$$_AppSettingModelCopyWith<$Res>
    implements $AppSettingModelCopyWith<$Res> {
  factory _$$_AppSettingModelCopyWith(
          _$_AppSettingModel value, $Res Function(_$_AppSettingModel) then) =
      __$$_AppSettingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'language_code') String languageCode,
      @JsonKey(name: 'is_dark_mode') bool isDarkMode,
      @JsonKey(name: 'is_opened') bool isOpened});
}

/// @nodoc
class __$$_AppSettingModelCopyWithImpl<$Res>
    extends _$AppSettingModelCopyWithImpl<$Res, _$_AppSettingModel>
    implements _$$_AppSettingModelCopyWith<$Res> {
  __$$_AppSettingModelCopyWithImpl(
      _$_AppSettingModel _value, $Res Function(_$_AppSettingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
    Object? isDarkMode = null,
    Object? isOpened = null,
  }) {
    return _then(_$_AppSettingModel(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
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
@JsonSerializable()
class _$_AppSettingModel implements _AppSettingModel {
  const _$_AppSettingModel(
      {@JsonKey(name: 'language_code') this.languageCode = 'en',
      @JsonKey(name: 'is_dark_mode') this.isDarkMode = false,
      @JsonKey(name: 'is_opened') this.isOpened = false});

  factory _$_AppSettingModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppSettingModelFromJson(json);

  @override
  @JsonKey(name: 'language_code')
  final String languageCode;
  @override
  @JsonKey(name: 'is_dark_mode')
  final bool isDarkMode;
  @override
  @JsonKey(name: 'is_opened')
  final bool isOpened;

  @override
  String toString() {
    return 'AppSettingModel(languageCode: $languageCode, isDarkMode: $isDarkMode, isOpened: $isOpened)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppSettingModel &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode) &&
            (identical(other.isOpened, isOpened) ||
                other.isOpened == isOpened));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, languageCode, isDarkMode, isOpened);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppSettingModelCopyWith<_$_AppSettingModel> get copyWith =>
      __$$_AppSettingModelCopyWithImpl<_$_AppSettingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppSettingModelToJson(
      this,
    );
  }
}

abstract class _AppSettingModel implements AppSettingModel {
  const factory _AppSettingModel(
      {@JsonKey(name: 'language_code') final String languageCode,
      @JsonKey(name: 'is_dark_mode') final bool isDarkMode,
      @JsonKey(name: 'is_opened') final bool isOpened}) = _$_AppSettingModel;

  factory _AppSettingModel.fromJson(Map<String, dynamic> json) =
      _$_AppSettingModel.fromJson;

  @override
  @JsonKey(name: 'language_code')
  String get languageCode;
  @override
  @JsonKey(name: 'is_dark_mode')
  bool get isDarkMode;
  @override
  @JsonKey(name: 'is_opened')
  bool get isOpened;
  @override
  @JsonKey(ignore: true)
  _$$_AppSettingModelCopyWith<_$_AppSettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
