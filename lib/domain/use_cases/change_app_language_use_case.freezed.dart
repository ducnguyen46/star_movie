// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_app_language_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChangeAppLanguageUseCaseParams {
  LanguageCode get languageCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangeAppLanguageUseCaseParamsCopyWith<ChangeAppLanguageUseCaseParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeAppLanguageUseCaseParamsCopyWith<$Res> {
  factory $ChangeAppLanguageUseCaseParamsCopyWith(
          ChangeAppLanguageUseCaseParams value,
          $Res Function(ChangeAppLanguageUseCaseParams) then) =
      _$ChangeAppLanguageUseCaseParamsCopyWithImpl<$Res,
          ChangeAppLanguageUseCaseParams>;
  @useResult
  $Res call({LanguageCode languageCode});
}

/// @nodoc
class _$ChangeAppLanguageUseCaseParamsCopyWithImpl<$Res,
        $Val extends ChangeAppLanguageUseCaseParams>
    implements $ChangeAppLanguageUseCaseParamsCopyWith<$Res> {
  _$ChangeAppLanguageUseCaseParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
  }) {
    return _then(_value.copyWith(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as LanguageCode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeAppLanguageUseCaseImplCopyWith<$Res>
    implements $ChangeAppLanguageUseCaseParamsCopyWith<$Res> {
  factory _$$ChangeAppLanguageUseCaseImplCopyWith(
          _$ChangeAppLanguageUseCaseImpl value,
          $Res Function(_$ChangeAppLanguageUseCaseImpl) then) =
      __$$ChangeAppLanguageUseCaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LanguageCode languageCode});
}

/// @nodoc
class __$$ChangeAppLanguageUseCaseImplCopyWithImpl<$Res>
    extends _$ChangeAppLanguageUseCaseParamsCopyWithImpl<$Res,
        _$ChangeAppLanguageUseCaseImpl>
    implements _$$ChangeAppLanguageUseCaseImplCopyWith<$Res> {
  __$$ChangeAppLanguageUseCaseImplCopyWithImpl(
      _$ChangeAppLanguageUseCaseImpl _value,
      $Res Function(_$ChangeAppLanguageUseCaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
  }) {
    return _then(_$ChangeAppLanguageUseCaseImpl(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as LanguageCode,
    ));
  }
}

/// @nodoc

class _$ChangeAppLanguageUseCaseImpl implements _ChangeAppLanguageUseCase {
  const _$ChangeAppLanguageUseCaseImpl({this.languageCode = LanguageCode.en});

  @override
  @JsonKey()
  final LanguageCode languageCode;

  @override
  String toString() {
    return 'ChangeAppLanguageUseCaseParams(languageCode: $languageCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAppLanguageUseCaseImpl &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, languageCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAppLanguageUseCaseImplCopyWith<_$ChangeAppLanguageUseCaseImpl>
      get copyWith => __$$ChangeAppLanguageUseCaseImplCopyWithImpl<
          _$ChangeAppLanguageUseCaseImpl>(this, _$identity);
}

abstract class _ChangeAppLanguageUseCase
    implements ChangeAppLanguageUseCaseParams {
  const factory _ChangeAppLanguageUseCase({final LanguageCode languageCode}) =
      _$ChangeAppLanguageUseCaseImpl;

  @override
  LanguageCode get languageCode;
  @override
  @JsonKey(ignore: true)
  _$$ChangeAppLanguageUseCaseImplCopyWith<_$ChangeAppLanguageUseCaseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
