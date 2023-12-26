// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Credit _$CreditFromJson(Map<String, dynamic> json) {
  return _Credit.fromJson(json);
}

/// @nodoc
mixin _$Credit {
  List<Cast> get casts => throw _privateConstructorUsedError;
  List<Crew> get crews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditCopyWith<Credit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCopyWith<$Res> {
  factory $CreditCopyWith(Credit value, $Res Function(Credit) then) =
      _$CreditCopyWithImpl<$Res, Credit>;
  @useResult
  $Res call({List<Cast> casts, List<Crew> crews});
}

/// @nodoc
class _$CreditCopyWithImpl<$Res, $Val extends Credit>
    implements $CreditCopyWith<$Res> {
  _$CreditCopyWithImpl(this._value, this._then);

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
              as List<Cast>,
      crews: null == crews
          ? _value.crews
          : crews // ignore: cast_nullable_to_non_nullable
              as List<Crew>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreditCopyWith<$Res> implements $CreditCopyWith<$Res> {
  factory _$$_CreditCopyWith(_$_Credit value, $Res Function(_$_Credit) then) =
      __$$_CreditCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Cast> casts, List<Crew> crews});
}

/// @nodoc
class __$$_CreditCopyWithImpl<$Res>
    extends _$CreditCopyWithImpl<$Res, _$_Credit>
    implements _$$_CreditCopyWith<$Res> {
  __$$_CreditCopyWithImpl(_$_Credit _value, $Res Function(_$_Credit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? casts = null,
    Object? crews = null,
  }) {
    return _then(_$_Credit(
      casts: null == casts
          ? _value._casts
          : casts // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
      crews: null == crews
          ? _value._crews
          : crews // ignore: cast_nullable_to_non_nullable
              as List<Crew>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Credit implements _Credit {
  const _$_Credit(
      {required final List<Cast> casts, required final List<Crew> crews})
      : _casts = casts,
        _crews = crews;

  factory _$_Credit.fromJson(Map<String, dynamic> json) =>
      _$$_CreditFromJson(json);

  final List<Cast> _casts;
  @override
  List<Cast> get casts {
    if (_casts is EqualUnmodifiableListView) return _casts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_casts);
  }

  final List<Crew> _crews;
  @override
  List<Crew> get crews {
    if (_crews is EqualUnmodifiableListView) return _crews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crews);
  }

  @override
  String toString() {
    return 'Credit(casts: $casts, crews: $crews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Credit &&
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
  _$$_CreditCopyWith<_$_Credit> get copyWith =>
      __$$_CreditCopyWithImpl<_$_Credit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreditToJson(
      this,
    );
  }
}

abstract class _Credit implements Credit {
  const factory _Credit(
      {required final List<Cast> casts,
      required final List<Crew> crews}) = _$_Credit;

  factory _Credit.fromJson(Map<String, dynamic> json) = _$_Credit.fromJson;

  @override
  List<Cast> get casts;
  @override
  List<Crew> get crews;
  @override
  @JsonKey(ignore: true)
  _$$_CreditCopyWith<_$_Credit> get copyWith =>
      throw _privateConstructorUsedError;
}
