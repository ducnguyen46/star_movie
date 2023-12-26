// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_image_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieImageResponseModel _$MovieImageResponseModelFromJson(
    Map<String, dynamic> json) {
  return _MovieImageResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MovieImageResponseModel {
  @JsonKey(name: 'backdrops')
  List<MovieImageModel> get backdrops => throw _privateConstructorUsedError;
  @JsonKey(name: 'logos')
  List<MovieImageModel> get logos => throw _privateConstructorUsedError;
  @JsonKey(name: 'posters')
  List<MovieImageModel> get posters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieImageResponseModelCopyWith<MovieImageResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieImageResponseModelCopyWith<$Res> {
  factory $MovieImageResponseModelCopyWith(MovieImageResponseModel value,
          $Res Function(MovieImageResponseModel) then) =
      _$MovieImageResponseModelCopyWithImpl<$Res, MovieImageResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrops') List<MovieImageModel> backdrops,
      @JsonKey(name: 'logos') List<MovieImageModel> logos,
      @JsonKey(name: 'posters') List<MovieImageModel> posters});
}

/// @nodoc
class _$MovieImageResponseModelCopyWithImpl<$Res,
        $Val extends MovieImageResponseModel>
    implements $MovieImageResponseModelCopyWith<$Res> {
  _$MovieImageResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdrops = null,
    Object? logos = null,
    Object? posters = null,
  }) {
    return _then(_value.copyWith(
      backdrops: null == backdrops
          ? _value.backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<MovieImageModel>,
      logos: null == logos
          ? _value.logos
          : logos // ignore: cast_nullable_to_non_nullable
              as List<MovieImageModel>,
      posters: null == posters
          ? _value.posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<MovieImageModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieImageResponseModelCopyWith<$Res>
    implements $MovieImageResponseModelCopyWith<$Res> {
  factory _$$_MovieImageResponseModelCopyWith(_$_MovieImageResponseModel value,
          $Res Function(_$_MovieImageResponseModel) then) =
      __$$_MovieImageResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrops') List<MovieImageModel> backdrops,
      @JsonKey(name: 'logos') List<MovieImageModel> logos,
      @JsonKey(name: 'posters') List<MovieImageModel> posters});
}

/// @nodoc
class __$$_MovieImageResponseModelCopyWithImpl<$Res>
    extends _$MovieImageResponseModelCopyWithImpl<$Res,
        _$_MovieImageResponseModel>
    implements _$$_MovieImageResponseModelCopyWith<$Res> {
  __$$_MovieImageResponseModelCopyWithImpl(_$_MovieImageResponseModel _value,
      $Res Function(_$_MovieImageResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdrops = null,
    Object? logos = null,
    Object? posters = null,
  }) {
    return _then(_$_MovieImageResponseModel(
      backdrops: null == backdrops
          ? _value._backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<MovieImageModel>,
      logos: null == logos
          ? _value._logos
          : logos // ignore: cast_nullable_to_non_nullable
              as List<MovieImageModel>,
      posters: null == posters
          ? _value._posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<MovieImageModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieImageResponseModel implements _MovieImageResponseModel {
  const _$_MovieImageResponseModel(
      {@JsonKey(name: 'backdrops')
          final List<MovieImageModel> backdrops = const <MovieImageModel>[],
      @JsonKey(name: 'logos')
          final List<MovieImageModel> logos = const <MovieImageModel>[],
      @JsonKey(name: 'posters')
          final List<MovieImageModel> posters = const <MovieImageModel>[]})
      : _backdrops = backdrops,
        _logos = logos,
        _posters = posters;

  factory _$_MovieImageResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieImageResponseModelFromJson(json);

  final List<MovieImageModel> _backdrops;
  @override
  @JsonKey(name: 'backdrops')
  List<MovieImageModel> get backdrops {
    if (_backdrops is EqualUnmodifiableListView) return _backdrops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_backdrops);
  }

  final List<MovieImageModel> _logos;
  @override
  @JsonKey(name: 'logos')
  List<MovieImageModel> get logos {
    if (_logos is EqualUnmodifiableListView) return _logos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_logos);
  }

  final List<MovieImageModel> _posters;
  @override
  @JsonKey(name: 'posters')
  List<MovieImageModel> get posters {
    if (_posters is EqualUnmodifiableListView) return _posters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posters);
  }

  @override
  String toString() {
    return 'MovieImageResponseModel(backdrops: $backdrops, logos: $logos, posters: $posters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieImageResponseModel &&
            const DeepCollectionEquality()
                .equals(other._backdrops, _backdrops) &&
            const DeepCollectionEquality().equals(other._logos, _logos) &&
            const DeepCollectionEquality().equals(other._posters, _posters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_backdrops),
      const DeepCollectionEquality().hash(_logos),
      const DeepCollectionEquality().hash(_posters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieImageResponseModelCopyWith<_$_MovieImageResponseModel>
      get copyWith =>
          __$$_MovieImageResponseModelCopyWithImpl<_$_MovieImageResponseModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieImageResponseModelToJson(
      this,
    );
  }
}

abstract class _MovieImageResponseModel implements MovieImageResponseModel {
  const factory _MovieImageResponseModel(
          {@JsonKey(name: 'backdrops') final List<MovieImageModel> backdrops,
          @JsonKey(name: 'logos') final List<MovieImageModel> logos,
          @JsonKey(name: 'posters') final List<MovieImageModel> posters}) =
      _$_MovieImageResponseModel;

  factory _MovieImageResponseModel.fromJson(Map<String, dynamic> json) =
      _$_MovieImageResponseModel.fromJson;

  @override
  @JsonKey(name: 'backdrops')
  List<MovieImageModel> get backdrops;
  @override
  @JsonKey(name: 'logos')
  List<MovieImageModel> get logos;
  @override
  @JsonKey(name: 'posters')
  List<MovieImageModel> get posters;
  @override
  @JsonKey(ignore: true)
  _$$_MovieImageResponseModelCopyWith<_$_MovieImageResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
