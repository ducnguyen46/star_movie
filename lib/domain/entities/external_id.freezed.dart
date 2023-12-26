// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'external_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExternalId _$ExternalIdFromJson(Map<String, dynamic> json) {
  return _ExternalId.fromJson(json);
}

/// @nodoc
mixin _$ExternalId {
  String get imdbId => throw _privateConstructorUsedError;
  String get wikiId => throw _privateConstructorUsedError;
  String get facebookId => throw _privateConstructorUsedError;
  String get instagramId => throw _privateConstructorUsedError;
  String get twitterId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExternalIdCopyWith<ExternalId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalIdCopyWith<$Res> {
  factory $ExternalIdCopyWith(
          ExternalId value, $Res Function(ExternalId) then) =
      _$ExternalIdCopyWithImpl<$Res, ExternalId>;
  @useResult
  $Res call(
      {String imdbId,
      String wikiId,
      String facebookId,
      String instagramId,
      String twitterId});
}

/// @nodoc
class _$ExternalIdCopyWithImpl<$Res, $Val extends ExternalId>
    implements $ExternalIdCopyWith<$Res> {
  _$ExternalIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imdbId = null,
    Object? wikiId = null,
    Object? facebookId = null,
    Object? instagramId = null,
    Object? twitterId = null,
  }) {
    return _then(_value.copyWith(
      imdbId: null == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String,
      wikiId: null == wikiId
          ? _value.wikiId
          : wikiId // ignore: cast_nullable_to_non_nullable
              as String,
      facebookId: null == facebookId
          ? _value.facebookId
          : facebookId // ignore: cast_nullable_to_non_nullable
              as String,
      instagramId: null == instagramId
          ? _value.instagramId
          : instagramId // ignore: cast_nullable_to_non_nullable
              as String,
      twitterId: null == twitterId
          ? _value.twitterId
          : twitterId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExternalIdCopyWith<$Res>
    implements $ExternalIdCopyWith<$Res> {
  factory _$$_ExternalIdCopyWith(
          _$_ExternalId value, $Res Function(_$_ExternalId) then) =
      __$$_ExternalIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String imdbId,
      String wikiId,
      String facebookId,
      String instagramId,
      String twitterId});
}

/// @nodoc
class __$$_ExternalIdCopyWithImpl<$Res>
    extends _$ExternalIdCopyWithImpl<$Res, _$_ExternalId>
    implements _$$_ExternalIdCopyWith<$Res> {
  __$$_ExternalIdCopyWithImpl(
      _$_ExternalId _value, $Res Function(_$_ExternalId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imdbId = null,
    Object? wikiId = null,
    Object? facebookId = null,
    Object? instagramId = null,
    Object? twitterId = null,
  }) {
    return _then(_$_ExternalId(
      imdbId: null == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String,
      wikiId: null == wikiId
          ? _value.wikiId
          : wikiId // ignore: cast_nullable_to_non_nullable
              as String,
      facebookId: null == facebookId
          ? _value.facebookId
          : facebookId // ignore: cast_nullable_to_non_nullable
              as String,
      instagramId: null == instagramId
          ? _value.instagramId
          : instagramId // ignore: cast_nullable_to_non_nullable
              as String,
      twitterId: null == twitterId
          ? _value.twitterId
          : twitterId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExternalId implements _ExternalId {
  const _$_ExternalId(
      {required this.imdbId,
      required this.wikiId,
      required this.facebookId,
      required this.instagramId,
      required this.twitterId});

  factory _$_ExternalId.fromJson(Map<String, dynamic> json) =>
      _$$_ExternalIdFromJson(json);

  @override
  final String imdbId;
  @override
  final String wikiId;
  @override
  final String facebookId;
  @override
  final String instagramId;
  @override
  final String twitterId;

  @override
  String toString() {
    return 'ExternalId(imdbId: $imdbId, wikiId: $wikiId, facebookId: $facebookId, instagramId: $instagramId, twitterId: $twitterId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExternalId &&
            (identical(other.imdbId, imdbId) || other.imdbId == imdbId) &&
            (identical(other.wikiId, wikiId) || other.wikiId == wikiId) &&
            (identical(other.facebookId, facebookId) ||
                other.facebookId == facebookId) &&
            (identical(other.instagramId, instagramId) ||
                other.instagramId == instagramId) &&
            (identical(other.twitterId, twitterId) ||
                other.twitterId == twitterId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, imdbId, wikiId, facebookId, instagramId, twitterId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExternalIdCopyWith<_$_ExternalId> get copyWith =>
      __$$_ExternalIdCopyWithImpl<_$_ExternalId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExternalIdToJson(
      this,
    );
  }
}

abstract class _ExternalId implements ExternalId {
  const factory _ExternalId(
      {required final String imdbId,
      required final String wikiId,
      required final String facebookId,
      required final String instagramId,
      required final String twitterId}) = _$_ExternalId;

  factory _ExternalId.fromJson(Map<String, dynamic> json) =
      _$_ExternalId.fromJson;

  @override
  String get imdbId;
  @override
  String get wikiId;
  @override
  String get facebookId;
  @override
  String get instagramId;
  @override
  String get twitterId;
  @override
  @JsonKey(ignore: true)
  _$$_ExternalIdCopyWith<_$_ExternalId> get copyWith =>
      throw _privateConstructorUsedError;
}
