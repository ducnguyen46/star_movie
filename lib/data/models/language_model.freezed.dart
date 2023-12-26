// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguageModel _$LanguageModelFromJson(Map<String, dynamic> json) {
  return _LanguageModel.fromJson(json);
}

/// @nodoc
mixin _$LanguageModel {
  @JsonKey(name: 'iso_639_1')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'english_name')
  String get englishName => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get nativeName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageModelCopyWith<LanguageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageModelCopyWith<$Res> {
  factory $LanguageModelCopyWith(
          LanguageModel value, $Res Function(LanguageModel) then) =
      _$LanguageModelCopyWithImpl<$Res, LanguageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'iso_639_1') String code,
      @JsonKey(name: 'english_name') String englishName,
      @JsonKey(name: 'name') String nativeName});
}

/// @nodoc
class _$LanguageModelCopyWithImpl<$Res, $Val extends LanguageModel>
    implements $LanguageModelCopyWith<$Res> {
  _$LanguageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? englishName = null,
    Object? nativeName = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_LanguageModelCopyWith<$Res>
    implements $LanguageModelCopyWith<$Res> {
  factory _$$_LanguageModelCopyWith(
          _$_LanguageModel value, $Res Function(_$_LanguageModel) then) =
      __$$_LanguageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'iso_639_1') String code,
      @JsonKey(name: 'english_name') String englishName,
      @JsonKey(name: 'name') String nativeName});
}

/// @nodoc
class __$$_LanguageModelCopyWithImpl<$Res>
    extends _$LanguageModelCopyWithImpl<$Res, _$_LanguageModel>
    implements _$$_LanguageModelCopyWith<$Res> {
  __$$_LanguageModelCopyWithImpl(
      _$_LanguageModel _value, $Res Function(_$_LanguageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? englishName = null,
    Object? nativeName = null,
  }) {
    return _then(_$_LanguageModel(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
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
class _$_LanguageModel implements _LanguageModel {
  const _$_LanguageModel(
      {@JsonKey(name: 'iso_639_1') this.code = '',
      @JsonKey(name: 'english_name') this.englishName = '',
      @JsonKey(name: 'name') this.nativeName = ''});

  factory _$_LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$$_LanguageModelFromJson(json);

  @override
  @JsonKey(name: 'iso_639_1')
  final String code;
  @override
  @JsonKey(name: 'english_name')
  final String englishName;
  @override
  @JsonKey(name: 'name')
  final String nativeName;

  @override
  String toString() {
    return 'LanguageModel(code: $code, englishName: $englishName, nativeName: $nativeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguageModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.nativeName, nativeName) ||
                other.nativeName == nativeName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, englishName, nativeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LanguageModelCopyWith<_$_LanguageModel> get copyWith =>
      __$$_LanguageModelCopyWithImpl<_$_LanguageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LanguageModelToJson(
      this,
    );
  }
}

abstract class _LanguageModel implements LanguageModel {
  const factory _LanguageModel(
      {@JsonKey(name: 'iso_639_1') final String code,
      @JsonKey(name: 'english_name') final String englishName,
      @JsonKey(name: 'name') final String nativeName}) = _$_LanguageModel;

  factory _LanguageModel.fromJson(Map<String, dynamic> json) =
      _$_LanguageModel.fromJson;

  @override
  @JsonKey(name: 'iso_639_1')
  String get code;
  @override
  @JsonKey(name: 'english_name')
  String get englishName;
  @override
  @JsonKey(name: 'name')
  String get nativeName;
  @override
  @JsonKey(ignore: true)
  _$$_LanguageModelCopyWith<_$_LanguageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LanguagesModel {
  List<LanguageModel> get languages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LanguagesModelCopyWith<LanguagesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguagesModelCopyWith<$Res> {
  factory $LanguagesModelCopyWith(
          LanguagesModel value, $Res Function(LanguagesModel) then) =
      _$LanguagesModelCopyWithImpl<$Res, LanguagesModel>;
  @useResult
  $Res call({List<LanguageModel> languages});
}

/// @nodoc
class _$LanguagesModelCopyWithImpl<$Res, $Val extends LanguagesModel>
    implements $LanguagesModelCopyWith<$Res> {
  _$LanguagesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languages = null,
  }) {
    return _then(_value.copyWith(
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<LanguageModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LanguagesModelCopyWith<$Res>
    implements $LanguagesModelCopyWith<$Res> {
  factory _$$_LanguagesModelCopyWith(
          _$_LanguagesModel value, $Res Function(_$_LanguagesModel) then) =
      __$$_LanguagesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LanguageModel> languages});
}

/// @nodoc
class __$$_LanguagesModelCopyWithImpl<$Res>
    extends _$LanguagesModelCopyWithImpl<$Res, _$_LanguagesModel>
    implements _$$_LanguagesModelCopyWith<$Res> {
  __$$_LanguagesModelCopyWithImpl(
      _$_LanguagesModel _value, $Res Function(_$_LanguagesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languages = null,
  }) {
    return _then(_$_LanguagesModel(
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<LanguageModel>,
    ));
  }
}

/// @nodoc

class _$_LanguagesModel implements _LanguagesModel {
  const _$_LanguagesModel({final List<LanguageModel> languages = const []})
      : _languages = languages;

  final List<LanguageModel> _languages;
  @override
  @JsonKey()
  List<LanguageModel> get languages {
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  @override
  String toString() {
    return 'LanguagesModel(languages: $languages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguagesModel &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_languages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LanguagesModelCopyWith<_$_LanguagesModel> get copyWith =>
      __$$_LanguagesModelCopyWithImpl<_$_LanguagesModel>(this, _$identity);
}

abstract class _LanguagesModel implements LanguagesModel {
  const factory _LanguagesModel({final List<LanguageModel> languages}) =
      _$_LanguagesModel;

  @override
  List<LanguageModel> get languages;
  @override
  @JsonKey(ignore: true)
  _$$_LanguagesModelCopyWith<_$_LanguagesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
