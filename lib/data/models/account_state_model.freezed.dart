// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountStateModel _$AccountStateModelFromJson(Map<String, dynamic> json) {
  return _AccountStateModel.fromJson(json);
}

/// @nodoc
mixin _$AccountStateModel {
  @JsonKey(name: 'id')
  int get movieId => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorite')
  bool get isFavorite => throw _privateConstructorUsedError;
  @JsonKey(name: 'rated')
  dynamic get rated => throw _privateConstructorUsedError;
  @JsonKey(name: 'watchlist')
  bool get isWatchlist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountStateModelCopyWith<AccountStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateModelCopyWith<$Res> {
  factory $AccountStateModelCopyWith(
          AccountStateModel value, $Res Function(AccountStateModel) then) =
      _$AccountStateModelCopyWithImpl<$Res, AccountStateModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int movieId,
      @JsonKey(name: 'favorite') bool isFavorite,
      @JsonKey(name: 'rated') dynamic rated,
      @JsonKey(name: 'watchlist') bool isWatchlist});
}

/// @nodoc
class _$AccountStateModelCopyWithImpl<$Res, $Val extends AccountStateModel>
    implements $AccountStateModelCopyWith<$Res> {
  _$AccountStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
    Object? isFavorite = null,
    Object? rated = freezed,
    Object? isWatchlist = null,
  }) {
    return _then(_value.copyWith(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      rated: freezed == rated
          ? _value.rated
          : rated // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isWatchlist: null == isWatchlist
          ? _value.isWatchlist
          : isWatchlist // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountStateModelImplCopyWith<$Res>
    implements $AccountStateModelCopyWith<$Res> {
  factory _$$AccountStateModelImplCopyWith(_$AccountStateModelImpl value,
          $Res Function(_$AccountStateModelImpl) then) =
      __$$AccountStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int movieId,
      @JsonKey(name: 'favorite') bool isFavorite,
      @JsonKey(name: 'rated') dynamic rated,
      @JsonKey(name: 'watchlist') bool isWatchlist});
}

/// @nodoc
class __$$AccountStateModelImplCopyWithImpl<$Res>
    extends _$AccountStateModelCopyWithImpl<$Res, _$AccountStateModelImpl>
    implements _$$AccountStateModelImplCopyWith<$Res> {
  __$$AccountStateModelImplCopyWithImpl(_$AccountStateModelImpl _value,
      $Res Function(_$AccountStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
    Object? isFavorite = null,
    Object? rated = freezed,
    Object? isWatchlist = null,
  }) {
    return _then(_$AccountStateModelImpl(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      rated: freezed == rated
          ? _value.rated
          : rated // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isWatchlist: null == isWatchlist
          ? _value.isWatchlist
          : isWatchlist // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountStateModelImpl implements _AccountStateModel {
  const _$AccountStateModelImpl(
      {@JsonKey(name: 'id') this.movieId = -1,
      @JsonKey(name: 'favorite') this.isFavorite = false,
      @JsonKey(name: 'rated') this.rated = false,
      @JsonKey(name: 'watchlist') this.isWatchlist = false});

  factory _$AccountStateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountStateModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int movieId;
  @override
  @JsonKey(name: 'favorite')
  final bool isFavorite;
  @override
  @JsonKey(name: 'rated')
  final dynamic rated;
  @override
  @JsonKey(name: 'watchlist')
  final bool isWatchlist;

  @override
  String toString() {
    return 'AccountStateModel(movieId: $movieId, isFavorite: $isFavorite, rated: $rated, isWatchlist: $isWatchlist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStateModelImpl &&
            (identical(other.movieId, movieId) || other.movieId == movieId) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            const DeepCollectionEquality().equals(other.rated, rated) &&
            (identical(other.isWatchlist, isWatchlist) ||
                other.isWatchlist == isWatchlist));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, movieId, isFavorite,
      const DeepCollectionEquality().hash(rated), isWatchlist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountStateModelImplCopyWith<_$AccountStateModelImpl> get copyWith =>
      __$$AccountStateModelImplCopyWithImpl<_$AccountStateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountStateModelImplToJson(
      this,
    );
  }
}

abstract class _AccountStateModel implements AccountStateModel {
  const factory _AccountStateModel(
          {@JsonKey(name: 'id') final int movieId,
          @JsonKey(name: 'favorite') final bool isFavorite,
          @JsonKey(name: 'rated') final dynamic rated,
          @JsonKey(name: 'watchlist') final bool isWatchlist}) =
      _$AccountStateModelImpl;

  factory _AccountStateModel.fromJson(Map<String, dynamic> json) =
      _$AccountStateModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get movieId;
  @override
  @JsonKey(name: 'favorite')
  bool get isFavorite;
  @override
  @JsonKey(name: 'rated')
  dynamic get rated;
  @override
  @JsonKey(name: 'watchlist')
  bool get isWatchlist;
  @override
  @JsonKey(ignore: true)
  _$$AccountStateModelImplCopyWith<_$AccountStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
