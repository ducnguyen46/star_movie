// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoResponseModel _$VideoResponseModelFromJson(Map<String, dynamic> json) {
  return _VideoResponseModel.fromJson(json);
}

/// @nodoc
mixin _$VideoResponseModel {
  @JsonKey(name: 'results')
  List<VideoModel> get videos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoResponseModelCopyWith<VideoResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoResponseModelCopyWith<$Res> {
  factory $VideoResponseModelCopyWith(
          VideoResponseModel value, $Res Function(VideoResponseModel) then) =
      _$VideoResponseModelCopyWithImpl<$Res, VideoResponseModel>;
  @useResult
  $Res call({@JsonKey(name: 'results') List<VideoModel> videos});
}

/// @nodoc
class _$VideoResponseModelCopyWithImpl<$Res, $Val extends VideoResponseModel>
    implements $VideoResponseModelCopyWith<$Res> {
  _$VideoResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = null,
  }) {
    return _then(_value.copyWith(
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoResponseModelImplCopyWith<$Res>
    implements $VideoResponseModelCopyWith<$Res> {
  factory _$$VideoResponseModelImplCopyWith(_$VideoResponseModelImpl value,
          $Res Function(_$VideoResponseModelImpl) then) =
      __$$VideoResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'results') List<VideoModel> videos});
}

/// @nodoc
class __$$VideoResponseModelImplCopyWithImpl<$Res>
    extends _$VideoResponseModelCopyWithImpl<$Res, _$VideoResponseModelImpl>
    implements _$$VideoResponseModelImplCopyWith<$Res> {
  __$$VideoResponseModelImplCopyWithImpl(_$VideoResponseModelImpl _value,
      $Res Function(_$VideoResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = null,
  }) {
    return _then(_$VideoResponseModelImpl(
      videos: null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoResponseModelImpl implements _VideoResponseModel {
  const _$VideoResponseModelImpl(
      {@JsonKey(name: 'results')
      final List<VideoModel> videos = const <VideoModel>[]})
      : _videos = videos;

  factory _$VideoResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoResponseModelImplFromJson(json);

  final List<VideoModel> _videos;
  @override
  @JsonKey(name: 'results')
  List<VideoModel> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  String toString() {
    return 'VideoResponseModel(videos: $videos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoResponseModelImpl &&
            const DeepCollectionEquality().equals(other._videos, _videos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_videos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoResponseModelImplCopyWith<_$VideoResponseModelImpl> get copyWith =>
      __$$VideoResponseModelImplCopyWithImpl<_$VideoResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoResponseModelImplToJson(
      this,
    );
  }
}

abstract class _VideoResponseModel implements VideoResponseModel {
  const factory _VideoResponseModel(
          {@JsonKey(name: 'results') final List<VideoModel> videos}) =
      _$VideoResponseModelImpl;

  factory _VideoResponseModel.fromJson(Map<String, dynamic> json) =
      _$VideoResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'results')
  List<VideoModel> get videos;
  @override
  @JsonKey(ignore: true)
  _$$VideoResponseModelImplCopyWith<_$VideoResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
