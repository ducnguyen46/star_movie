// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'external_id_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExternalIdModel _$ExternalIdModelFromJson(Map<String, dynamic> json) {
  return _ExternalIdModel.fromJson(json);
}

/// @nodoc
mixin _$ExternalIdModel {
  @JsonKey(name: 'imdb_id')
  String get imdbId => throw _privateConstructorUsedError;
  @JsonKey(name: 'wikidata_id')
  String get wikiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'facebook_id')
  String get facebookId => throw _privateConstructorUsedError;
  @JsonKey(name: 'instagram_id')
  String get instagramId => throw _privateConstructorUsedError;
  @JsonKey(name: 'twitter_id')
  String get twitterId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExternalIdModelCopyWith<ExternalIdModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalIdModelCopyWith<$Res> {
  factory $ExternalIdModelCopyWith(
          ExternalIdModel value, $Res Function(ExternalIdModel) then) =
      _$ExternalIdModelCopyWithImpl<$Res, ExternalIdModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'imdb_id') String imdbId,
      @JsonKey(name: 'wikidata_id') String wikiId,
      @JsonKey(name: 'facebook_id') String facebookId,
      @JsonKey(name: 'instagram_id') String instagramId,
      @JsonKey(name: 'twitter_id') String twitterId});
}

/// @nodoc
class _$ExternalIdModelCopyWithImpl<$Res, $Val extends ExternalIdModel>
    implements $ExternalIdModelCopyWith<$Res> {
  _$ExternalIdModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_ExternalIdModelCopyWith<$Res>
    implements $ExternalIdModelCopyWith<$Res> {
  factory _$$_ExternalIdModelCopyWith(
          _$_ExternalIdModel value, $Res Function(_$_ExternalIdModel) then) =
      __$$_ExternalIdModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'imdb_id') String imdbId,
      @JsonKey(name: 'wikidata_id') String wikiId,
      @JsonKey(name: 'facebook_id') String facebookId,
      @JsonKey(name: 'instagram_id') String instagramId,
      @JsonKey(name: 'twitter_id') String twitterId});
}

/// @nodoc
class __$$_ExternalIdModelCopyWithImpl<$Res>
    extends _$ExternalIdModelCopyWithImpl<$Res, _$_ExternalIdModel>
    implements _$$_ExternalIdModelCopyWith<$Res> {
  __$$_ExternalIdModelCopyWithImpl(
      _$_ExternalIdModel _value, $Res Function(_$_ExternalIdModel) _then)
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
    return _then(_$_ExternalIdModel(
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
class _$_ExternalIdModel implements _ExternalIdModel {
  const _$_ExternalIdModel(
      {@JsonKey(name: 'imdb_id') this.imdbId = '',
      @JsonKey(name: 'wikidata_id') this.wikiId = '',
      @JsonKey(name: 'facebook_id') this.facebookId = '',
      @JsonKey(name: 'instagram_id') this.instagramId = '',
      @JsonKey(name: 'twitter_id') this.twitterId = ''});

  factory _$_ExternalIdModel.fromJson(Map<String, dynamic> json) =>
      _$$_ExternalIdModelFromJson(json);

  @override
  @JsonKey(name: 'imdb_id')
  final String imdbId;
  @override
  @JsonKey(name: 'wikidata_id')
  final String wikiId;
  @override
  @JsonKey(name: 'facebook_id')
  final String facebookId;
  @override
  @JsonKey(name: 'instagram_id')
  final String instagramId;
  @override
  @JsonKey(name: 'twitter_id')
  final String twitterId;

  @override
  String toString() {
    return 'ExternalIdModel(imdbId: $imdbId, wikiId: $wikiId, facebookId: $facebookId, instagramId: $instagramId, twitterId: $twitterId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExternalIdModel &&
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
  _$$_ExternalIdModelCopyWith<_$_ExternalIdModel> get copyWith =>
      __$$_ExternalIdModelCopyWithImpl<_$_ExternalIdModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExternalIdModelToJson(
      this,
    );
  }
}

abstract class _ExternalIdModel implements ExternalIdModel {
  const factory _ExternalIdModel(
          {@JsonKey(name: 'imdb_id') final String imdbId,
          @JsonKey(name: 'wikidata_id') final String wikiId,
          @JsonKey(name: 'facebook_id') final String facebookId,
          @JsonKey(name: 'instagram_id') final String instagramId,
          @JsonKey(name: 'twitter_id') final String twitterId}) =
      _$_ExternalIdModel;

  factory _ExternalIdModel.fromJson(Map<String, dynamic> json) =
      _$_ExternalIdModel.fromJson;

  @override
  @JsonKey(name: 'imdb_id')
  String get imdbId;
  @override
  @JsonKey(name: 'wikidata_id')
  String get wikiId;
  @override
  @JsonKey(name: 'facebook_id')
  String get facebookId;
  @override
  @JsonKey(name: 'instagram_id')
  String get instagramId;
  @override
  @JsonKey(name: 'twitter_id')
  String get twitterId;
  @override
  @JsonKey(ignore: true)
  _$$_ExternalIdModelCopyWith<_$_ExternalIdModel> get copyWith =>
      throw _privateConstructorUsedError;
}
