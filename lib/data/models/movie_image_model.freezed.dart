// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieImageModel _$MovieImageModelFromJson(Map<String, dynamic> json) {
  return _MovieImageModel.fromJson(json);
}

/// @nodoc
mixin _$MovieImageModel {
  @JsonKey(name: 'height')
  int get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  int get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_path')
  String get filePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieImageModelCopyWith<MovieImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieImageModelCopyWith<$Res> {
  factory $MovieImageModelCopyWith(
          MovieImageModel value, $Res Function(MovieImageModel) then) =
      _$MovieImageModelCopyWithImpl<$Res, MovieImageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'height') int height,
      @JsonKey(name: 'width') int width,
      @JsonKey(name: 'file_path') String filePath});
}

/// @nodoc
class _$MovieImageModelCopyWithImpl<$Res, $Val extends MovieImageModel>
    implements $MovieImageModelCopyWith<$Res> {
  _$MovieImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? width = null,
    Object? filePath = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieImageModelImplCopyWith<$Res>
    implements $MovieImageModelCopyWith<$Res> {
  factory _$$MovieImageModelImplCopyWith(_$MovieImageModelImpl value,
          $Res Function(_$MovieImageModelImpl) then) =
      __$$MovieImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'height') int height,
      @JsonKey(name: 'width') int width,
      @JsonKey(name: 'file_path') String filePath});
}

/// @nodoc
class __$$MovieImageModelImplCopyWithImpl<$Res>
    extends _$MovieImageModelCopyWithImpl<$Res, _$MovieImageModelImpl>
    implements _$$MovieImageModelImplCopyWith<$Res> {
  __$$MovieImageModelImplCopyWithImpl(
      _$MovieImageModelImpl _value, $Res Function(_$MovieImageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? width = null,
    Object? filePath = null,
  }) {
    return _then(_$MovieImageModelImpl(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieImageModelImpl implements _MovieImageModel {
  const _$MovieImageModelImpl(
      {@JsonKey(name: 'height') this.height = 0,
      @JsonKey(name: 'width') this.width = 0,
      @JsonKey(name: 'file_path') this.filePath = ''});

  factory _$MovieImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieImageModelImplFromJson(json);

  @override
  @JsonKey(name: 'height')
  final int height;
  @override
  @JsonKey(name: 'width')
  final int width;
  @override
  @JsonKey(name: 'file_path')
  final String filePath;

  @override
  String toString() {
    return 'MovieImageModel(height: $height, width: $width, filePath: $filePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieImageModelImpl &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, height, width, filePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieImageModelImplCopyWith<_$MovieImageModelImpl> get copyWith =>
      __$$MovieImageModelImplCopyWithImpl<_$MovieImageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieImageModelImplToJson(
      this,
    );
  }
}

abstract class _MovieImageModel implements MovieImageModel {
  const factory _MovieImageModel(
          {@JsonKey(name: 'height') final int height,
          @JsonKey(name: 'width') final int width,
          @JsonKey(name: 'file_path') final String filePath}) =
      _$MovieImageModelImpl;

  factory _MovieImageModel.fromJson(Map<String, dynamic> json) =
      _$MovieImageModelImpl.fromJson;

  @override
  @JsonKey(name: 'height')
  int get height;
  @override
  @JsonKey(name: 'width')
  int get width;
  @override
  @JsonKey(name: 'file_path')
  String get filePath;
  @override
  @JsonKey(ignore: true)
  _$$MovieImageModelImplCopyWith<_$MovieImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
