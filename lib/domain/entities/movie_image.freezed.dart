// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieImage _$MovieImageFromJson(Map<String, dynamic> json) {
  return _MovieImage.fromJson(json);
}

/// @nodoc
mixin _$MovieImage {
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  String get filePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieImageCopyWith<MovieImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieImageCopyWith<$Res> {
  factory $MovieImageCopyWith(
          MovieImage value, $Res Function(MovieImage) then) =
      _$MovieImageCopyWithImpl<$Res, MovieImage>;
  @useResult
  $Res call({int height, int width, String filePath});
}

/// @nodoc
class _$MovieImageCopyWithImpl<$Res, $Val extends MovieImage>
    implements $MovieImageCopyWith<$Res> {
  _$MovieImageCopyWithImpl(this._value, this._then);

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
abstract class _$$_MovieImageCopyWith<$Res>
    implements $MovieImageCopyWith<$Res> {
  factory _$$_MovieImageCopyWith(
          _$_MovieImage value, $Res Function(_$_MovieImage) then) =
      __$$_MovieImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int height, int width, String filePath});
}

/// @nodoc
class __$$_MovieImageCopyWithImpl<$Res>
    extends _$MovieImageCopyWithImpl<$Res, _$_MovieImage>
    implements _$$_MovieImageCopyWith<$Res> {
  __$$_MovieImageCopyWithImpl(
      _$_MovieImage _value, $Res Function(_$_MovieImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? width = null,
    Object? filePath = null,
  }) {
    return _then(_$_MovieImage(
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
class _$_MovieImage implements _MovieImage {
  const _$_MovieImage(
      {required this.height, required this.width, required this.filePath});

  factory _$_MovieImage.fromJson(Map<String, dynamic> json) =>
      _$$_MovieImageFromJson(json);

  @override
  final int height;
  @override
  final int width;
  @override
  final String filePath;

  @override
  String toString() {
    return 'MovieImage(height: $height, width: $width, filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieImage &&
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
  _$$_MovieImageCopyWith<_$_MovieImage> get copyWith =>
      __$$_MovieImageCopyWithImpl<_$_MovieImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieImageToJson(
      this,
    );
  }
}

abstract class _MovieImage implements MovieImage {
  const factory _MovieImage(
      {required final int height,
      required final int width,
      required final String filePath}) = _$_MovieImage;

  factory _MovieImage.fromJson(Map<String, dynamic> json) =
      _$_MovieImage.fromJson;

  @override
  int get height;
  @override
  int get width;
  @override
  String get filePath;
  @override
  @JsonKey(ignore: true)
  _$$_MovieImageCopyWith<_$_MovieImage> get copyWith =>
      throw _privateConstructorUsedError;
}
