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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$ExternalIdModelImplCopyWith<$Res>
    implements $ExternalIdModelCopyWith<$Res> {
  factory _$$ExternalIdModelImplCopyWith(_$ExternalIdModelImpl value,
          $Res Function(_$ExternalIdModelImpl) then) =
      __$$ExternalIdModelImplCopyWithImpl<$Res>;
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
class __$$ExternalIdModelImplCopyWithImpl<$Res>
    extends _$ExternalIdModelCopyWithImpl<$Res, _$ExternalIdModelImpl>
    implements _$$ExternalIdModelImplCopyWith<$Res> {
  __$$ExternalIdModelImplCopyWithImpl(
      _$ExternalIdModelImpl _value, $Res Function(_$ExternalIdModelImpl) _then)
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
    return _then(_$ExternalIdModelImpl(
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
class _$ExternalIdModelImpl implements _ExternalIdModel {
  const _$ExternalIdModelImpl(
      {@JsonKey(name: 'imdb_id') this.imdbId = '',
      @JsonKey(name: 'wikidata_id') this.wikiId = '',
      @JsonKey(name: 'facebook_id') this.facebookId = '',
      @JsonKey(name: 'instagram_id') this.instagramId = '',
      @JsonKey(name: 'twitter_id') this.twitterId = ''});

  factory _$ExternalIdModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalIdModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalIdModelImpl &&
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
  _$$ExternalIdModelImplCopyWith<_$ExternalIdModelImpl> get copyWith =>
      __$$ExternalIdModelImplCopyWithImpl<_$ExternalIdModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalIdModelImplToJson(
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
      _$ExternalIdModelImpl;

  factory _ExternalIdModel.fromJson(Map<String, dynamic> json) =
      _$ExternalIdModelImpl.fromJson;

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
  _$$ExternalIdModelImplCopyWith<_$ExternalIdModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
