// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreditModel _$CreditModelFromJson(Map<String, dynamic> json) {
  return _CreditModel.fromJson(json);
}

/// @nodoc
mixin _$CreditModel {
  @JsonKey(name: 'cast')
  List<CastModel> get casts => throw _privateConstructorUsedError;
  @JsonKey(name: 'crew')
  List<CrewModel> get crews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditModelCopyWith<CreditModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditModelCopyWith<$Res> {
  factory $CreditModelCopyWith(
          CreditModel value, $Res Function(CreditModel) then) =
      _$CreditModelCopyWithImpl<$Res, CreditModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cast') List<CastModel> casts,
      @JsonKey(name: 'crew') List<CrewModel> crews});
}

/// @nodoc
class _$CreditModelCopyWithImpl<$Res, $Val extends CreditModel>
    implements $CreditModelCopyWith<$Res> {
  _$CreditModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? casts = null,
    Object? crews = null,
  }) {
    return _then(_value.copyWith(
      casts: null == casts
          ? _value.casts
          : casts // ignore: cast_nullable_to_non_nullable
              as List<CastModel>,
      crews: null == crews
          ? _value.crews
          : crews // ignore: cast_nullable_to_non_nullable
              as List<CrewModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreditModelCopyWith<$Res>
    implements $CreditModelCopyWith<$Res> {
  factory _$$_CreditModelCopyWith(
          _$_CreditModel value, $Res Function(_$_CreditModel) then) =
      __$$_CreditModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cast') List<CastModel> casts,
      @JsonKey(name: 'crew') List<CrewModel> crews});
}

/// @nodoc
class __$$_CreditModelCopyWithImpl<$Res>
    extends _$CreditModelCopyWithImpl<$Res, _$_CreditModel>
    implements _$$_CreditModelCopyWith<$Res> {
  __$$_CreditModelCopyWithImpl(
      _$_CreditModel _value, $Res Function(_$_CreditModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? casts = null,
    Object? crews = null,
  }) {
    return _then(_$_CreditModel(
      casts: null == casts
          ? _value._casts
          : casts // ignore: cast_nullable_to_non_nullable
              as List<CastModel>,
      crews: null == crews
          ? _value._crews
          : crews // ignore: cast_nullable_to_non_nullable
              as List<CrewModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreditModel implements _CreditModel {
  const _$_CreditModel(
      {@JsonKey(name: 'cast') final List<CastModel> casts = const <CastModel>[],
      @JsonKey(name: 'crew') final List<CrewModel> crews = const <CrewModel>[]})
      : _casts = casts,
        _crews = crews;

  factory _$_CreditModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreditModelFromJson(json);

  final List<CastModel> _casts;
  @override
  @JsonKey(name: 'cast')
  List<CastModel> get casts {
    if (_casts is EqualUnmodifiableListView) return _casts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_casts);
  }

  final List<CrewModel> _crews;
  @override
  @JsonKey(name: 'crew')
  List<CrewModel> get crews {
    if (_crews is EqualUnmodifiableListView) return _crews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crews);
  }

  @override
  String toString() {
    return 'CreditModel(casts: $casts, crews: $crews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreditModel &&
            const DeepCollectionEquality().equals(other._casts, _casts) &&
            const DeepCollectionEquality().equals(other._crews, _crews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_casts),
      const DeepCollectionEquality().hash(_crews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreditModelCopyWith<_$_CreditModel> get copyWith =>
      __$$_CreditModelCopyWithImpl<_$_CreditModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreditModelToJson(
      this,
    );
  }
}

abstract class _CreditModel implements CreditModel {
  const factory _CreditModel(
      {@JsonKey(name: 'cast') final List<CastModel> casts,
      @JsonKey(name: 'crew') final List<CrewModel> crews}) = _$_CreditModel;

  factory _CreditModel.fromJson(Map<String, dynamic> json) =
      _$_CreditModel.fromJson;

  @override
  @JsonKey(name: 'cast')
  List<CastModel> get casts;
  @override
  @JsonKey(name: 'crew')
  List<CrewModel> get crews;
  @override
  @JsonKey(ignore: true)
  _$$_CreditModelCopyWith<_$_CreditModel> get copyWith =>
      throw _privateConstructorUsedError;
}
