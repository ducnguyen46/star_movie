// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_app_theme_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChangeAppThemeUseCaseParams {
  bool get isDarkMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangeAppThemeUseCaseParamsCopyWith<ChangeAppThemeUseCaseParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeAppThemeUseCaseParamsCopyWith<$Res> {
  factory $ChangeAppThemeUseCaseParamsCopyWith(
          ChangeAppThemeUseCaseParams value,
          $Res Function(ChangeAppThemeUseCaseParams) then) =
      _$ChangeAppThemeUseCaseParamsCopyWithImpl<$Res,
          ChangeAppThemeUseCaseParams>;
  @useResult
  $Res call({bool isDarkMode});
}

/// @nodoc
class _$ChangeAppThemeUseCaseParamsCopyWithImpl<$Res,
        $Val extends ChangeAppThemeUseCaseParams>
    implements $ChangeAppThemeUseCaseParamsCopyWith<$Res> {
  _$ChangeAppThemeUseCaseParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
  }) {
    return _then(_value.copyWith(
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeAppThemeUseCaseParamsImplCopyWith<$Res>
    implements $ChangeAppThemeUseCaseParamsCopyWith<$Res> {
  factory _$$ChangeAppThemeUseCaseParamsImplCopyWith(
          _$ChangeAppThemeUseCaseParamsImpl value,
          $Res Function(_$ChangeAppThemeUseCaseParamsImpl) then) =
      __$$ChangeAppThemeUseCaseParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDarkMode});
}

/// @nodoc
class __$$ChangeAppThemeUseCaseParamsImplCopyWithImpl<$Res>
    extends _$ChangeAppThemeUseCaseParamsCopyWithImpl<$Res,
        _$ChangeAppThemeUseCaseParamsImpl>
    implements _$$ChangeAppThemeUseCaseParamsImplCopyWith<$Res> {
  __$$ChangeAppThemeUseCaseParamsImplCopyWithImpl(
      _$ChangeAppThemeUseCaseParamsImpl _value,
      $Res Function(_$ChangeAppThemeUseCaseParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
  }) {
    return _then(_$ChangeAppThemeUseCaseParamsImpl(
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeAppThemeUseCaseParamsImpl
    implements _ChangeAppThemeUseCaseParams {
  const _$ChangeAppThemeUseCaseParamsImpl({this.isDarkMode = false});

  @override
  @JsonKey()
  final bool isDarkMode;

  @override
  String toString() {
    return 'ChangeAppThemeUseCaseParams(isDarkMode: $isDarkMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAppThemeUseCaseParamsImpl &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAppThemeUseCaseParamsImplCopyWith<_$ChangeAppThemeUseCaseParamsImpl>
      get copyWith => __$$ChangeAppThemeUseCaseParamsImplCopyWithImpl<
          _$ChangeAppThemeUseCaseParamsImpl>(this, _$identity);
}

abstract class _ChangeAppThemeUseCaseParams
    implements ChangeAppThemeUseCaseParams {
  const factory _ChangeAppThemeUseCaseParams({final bool isDarkMode}) =
      _$ChangeAppThemeUseCaseParamsImpl;

  @override
  bool get isDarkMode;
  @override
  @JsonKey(ignore: true)
  _$$ChangeAppThemeUseCaseParamsImplCopyWith<_$ChangeAppThemeUseCaseParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
