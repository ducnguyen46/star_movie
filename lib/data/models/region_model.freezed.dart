// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'region_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegionModel _$RegionModelFromJson(Map<String, dynamic> json) {
  return _RegionModel.fromJson(json);
}

/// @nodoc
mixin _$RegionModel {
  @JsonKey(name: 'iso_3166_1')
  String get regionCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'english_name')
  String get englishName => throw _privateConstructorUsedError;
  @JsonKey(name: 'native_name')
  String get nativeName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegionModelCopyWith<RegionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionModelCopyWith<$Res> {
  factory $RegionModelCopyWith(
          RegionModel value, $Res Function(RegionModel) then) =
      _$RegionModelCopyWithImpl<$Res, RegionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'iso_3166_1') String regionCode,
      @JsonKey(name: 'english_name') String englishName,
      @JsonKey(name: 'native_name') String nativeName});
}

/// @nodoc
class _$RegionModelCopyWithImpl<$Res, $Val extends RegionModel>
    implements $RegionModelCopyWith<$Res> {
  _$RegionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regionCode = null,
    Object? englishName = null,
    Object? nativeName = null,
  }) {
    return _then(_value.copyWith(
      regionCode: null == regionCode
          ? _value.regionCode
          : regionCode // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      nativeName: null == nativeName
          ? _value.nativeName
          : nativeName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegionModelCopyWith<$Res>
    implements $RegionModelCopyWith<$Res> {
  factory _$$_RegionModelCopyWith(
          _$_RegionModel value, $Res Function(_$_RegionModel) then) =
      __$$_RegionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'iso_3166_1') String regionCode,
      @JsonKey(name: 'english_name') String englishName,
      @JsonKey(name: 'native_name') String nativeName});
}

/// @nodoc
class __$$_RegionModelCopyWithImpl<$Res>
    extends _$RegionModelCopyWithImpl<$Res, _$_RegionModel>
    implements _$$_RegionModelCopyWith<$Res> {
  __$$_RegionModelCopyWithImpl(
      _$_RegionModel _value, $Res Function(_$_RegionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regionCode = null,
    Object? englishName = null,
    Object? nativeName = null,
  }) {
    return _then(_$_RegionModel(
      regionCode: null == regionCode
          ? _value.regionCode
          : regionCode // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      nativeName: null == nativeName
          ? _value.nativeName
          : nativeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegionModel implements _RegionModel {
  const _$_RegionModel(
      {@JsonKey(name: 'iso_3166_1') this.regionCode = '',
      @JsonKey(name: 'english_name') this.englishName = '',
      @JsonKey(name: 'native_name') this.nativeName = ''});

  factory _$_RegionModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegionModelFromJson(json);

  @override
  @JsonKey(name: 'iso_3166_1')
  final String regionCode;
  @override
  @JsonKey(name: 'english_name')
  final String englishName;
  @override
  @JsonKey(name: 'native_name')
  final String nativeName;

  @override
  String toString() {
    return 'RegionModel(regionCode: $regionCode, englishName: $englishName, nativeName: $nativeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegionModel &&
            (identical(other.regionCode, regionCode) ||
                other.regionCode == regionCode) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.nativeName, nativeName) ||
                other.nativeName == nativeName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, regionCode, englishName, nativeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegionModelCopyWith<_$_RegionModel> get copyWith =>
      __$$_RegionModelCopyWithImpl<_$_RegionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegionModelToJson(
      this,
    );
  }
}

abstract class _RegionModel implements RegionModel {
  const factory _RegionModel(
      {@JsonKey(name: 'iso_3166_1') final String regionCode,
      @JsonKey(name: 'english_name') final String englishName,
      @JsonKey(name: 'native_name') final String nativeName}) = _$_RegionModel;

  factory _RegionModel.fromJson(Map<String, dynamic> json) =
      _$_RegionModel.fromJson;

  @override
  @JsonKey(name: 'iso_3166_1')
  String get regionCode;
  @override
  @JsonKey(name: 'english_name')
  String get englishName;
  @override
  @JsonKey(name: 'native_name')
  String get nativeName;
  @override
  @JsonKey(ignore: true)
  _$$_RegionModelCopyWith<_$_RegionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

RegionsModel _$RegionsModelFromJson(Map<String, dynamic> json) {
  return _RegionsModel.fromJson(json);
}

/// @nodoc
mixin _$RegionsModel {
  @JsonKey(name: 'regions')
  List<RegionModel> get regions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegionsModelCopyWith<RegionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionsModelCopyWith<$Res> {
  factory $RegionsModelCopyWith(
          RegionsModel value, $Res Function(RegionsModel) then) =
      _$RegionsModelCopyWithImpl<$Res, RegionsModel>;
  @useResult
  $Res call({@JsonKey(name: 'regions') List<RegionModel> regions});
}

/// @nodoc
class _$RegionsModelCopyWithImpl<$Res, $Val extends RegionsModel>
    implements $RegionsModelCopyWith<$Res> {
  _$RegionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regions = null,
  }) {
    return _then(_value.copyWith(
      regions: null == regions
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<RegionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegionsModelCopyWith<$Res>
    implements $RegionsModelCopyWith<$Res> {
  factory _$$_RegionsModelCopyWith(
          _$_RegionsModel value, $Res Function(_$_RegionsModel) then) =
      __$$_RegionsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'regions') List<RegionModel> regions});
}

/// @nodoc
class __$$_RegionsModelCopyWithImpl<$Res>
    extends _$RegionsModelCopyWithImpl<$Res, _$_RegionsModel>
    implements _$$_RegionsModelCopyWith<$Res> {
  __$$_RegionsModelCopyWithImpl(
      _$_RegionsModel _value, $Res Function(_$_RegionsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regions = null,
  }) {
    return _then(_$_RegionsModel(
      regions: null == regions
          ? _value._regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<RegionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegionsModel implements _RegionsModel {
  const _$_RegionsModel(
      {@JsonKey(name: 'regions') final List<RegionModel> regions = const []})
      : _regions = regions;

  factory _$_RegionsModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegionsModelFromJson(json);

  final List<RegionModel> _regions;
  @override
  @JsonKey(name: 'regions')
  List<RegionModel> get regions {
    if (_regions is EqualUnmodifiableListView) return _regions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_regions);
  }

  @override
  String toString() {
    return 'RegionsModel(regions: $regions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegionsModel &&
            const DeepCollectionEquality().equals(other._regions, _regions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_regions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegionsModelCopyWith<_$_RegionsModel> get copyWith =>
      __$$_RegionsModelCopyWithImpl<_$_RegionsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegionsModelToJson(
      this,
    );
  }
}

abstract class _RegionsModel implements RegionsModel {
  const factory _RegionsModel(
          {@JsonKey(name: 'regions') final List<RegionModel> regions}) =
      _$_RegionsModel;

  factory _RegionsModel.fromJson(Map<String, dynamic> json) =
      _$_RegionsModel.fromJson;

  @override
  @JsonKey(name: 'regions')
  List<RegionModel> get regions;
  @override
  @JsonKey(ignore: true)
  _$$_RegionsModelCopyWith<_$_RegionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
