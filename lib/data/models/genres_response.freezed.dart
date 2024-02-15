// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genres_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenresResponse _$GenresResponseFromJson(Map<String, dynamic> json) {
  return _GenresResponse.fromJson(json);
}

/// @nodoc
mixin _$GenresResponse {
  @JsonKey(name: 'genres')
  List<GenreModel> get genres => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenresResponseCopyWith<GenresResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenresResponseCopyWith<$Res> {
  factory $GenresResponseCopyWith(
          GenresResponse value, $Res Function(GenresResponse) then) =
      _$GenresResponseCopyWithImpl<$Res, GenresResponse>;
  @useResult
  $Res call({@JsonKey(name: 'genres') List<GenreModel> genres});
}

/// @nodoc
class _$GenresResponseCopyWithImpl<$Res, $Val extends GenresResponse>
    implements $GenresResponseCopyWith<$Res> {
  _$GenresResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = null,
  }) {
    return _then(_value.copyWith(
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenresResponseImplCopyWith<$Res>
    implements $GenresResponseCopyWith<$Res> {
  factory _$$GenresResponseImplCopyWith(_$GenresResponseImpl value,
          $Res Function(_$GenresResponseImpl) then) =
      __$$GenresResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'genres') List<GenreModel> genres});
}

/// @nodoc
class __$$GenresResponseImplCopyWithImpl<$Res>
    extends _$GenresResponseCopyWithImpl<$Res, _$GenresResponseImpl>
    implements _$$GenresResponseImplCopyWith<$Res> {
  __$$GenresResponseImplCopyWithImpl(
      _$GenresResponseImpl _value, $Res Function(_$GenresResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = null,
  }) {
    return _then(_$GenresResponseImpl(
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenresResponseImpl implements _GenresResponse {
  const _$GenresResponseImpl(
      {@JsonKey(name: 'genres')
      final List<GenreModel> genres = const <GenreModel>[]})
      : _genres = genres;

  factory _$GenresResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenresResponseImplFromJson(json);

  final List<GenreModel> _genres;
  @override
  @JsonKey(name: 'genres')
  List<GenreModel> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  String toString() {
    return 'GenresResponse(genres: $genres)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenresResponseImpl &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_genres));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenresResponseImplCopyWith<_$GenresResponseImpl> get copyWith =>
      __$$GenresResponseImplCopyWithImpl<_$GenresResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenresResponseImplToJson(
      this,
    );
  }
}

abstract class _GenresResponse implements GenresResponse {
  const factory _GenresResponse(
          {@JsonKey(name: 'genres') final List<GenreModel> genres}) =
      _$GenresResponseImpl;

  factory _GenresResponse.fromJson(Map<String, dynamic> json) =
      _$GenresResponseImpl.fromJson;

  @override
  @JsonKey(name: 'genres')
  List<GenreModel> get genres;
  @override
  @JsonKey(ignore: true)
  _$$GenresResponseImplCopyWith<_$GenresResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
