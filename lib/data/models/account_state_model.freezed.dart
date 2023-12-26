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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountStateModel _$AccountStateModelFromJson(Map<String, dynamic> json) {
  return _AccountStateModel.fromJson(json);
}

/// @nodoc
mixin _$AccountStateModel {
  @JsonKey(name: 'id')
  int get movieId => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorite')
  bool get favorite => throw _privateConstructorUsedError;
  @JsonKey(name: 'rated')
  dynamic get rated => throw _privateConstructorUsedError;
  @JsonKey(name: 'watchlist')
  bool get watchlist => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'favorite') bool favorite,
      @JsonKey(name: 'rated') dynamic rated,
      @JsonKey(name: 'watchlist') bool watchlist});
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
    Object? favorite = null,
    Object? rated = freezed,
    Object? watchlist = null,
  }) {
    return _then(_value.copyWith(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
      rated: freezed == rated
          ? _value.rated
          : rated // ignore: cast_nullable_to_non_nullable
              as dynamic,
      watchlist: null == watchlist
          ? _value.watchlist
          : watchlist // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountStateModelCopyWith<$Res>
    implements $AccountStateModelCopyWith<$Res> {
  factory _$$_AccountStateModelCopyWith(_$_AccountStateModel value,
          $Res Function(_$_AccountStateModel) then) =
      __$$_AccountStateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int movieId,
      @JsonKey(name: 'favorite') bool favorite,
      @JsonKey(name: 'rated') dynamic rated,
      @JsonKey(name: 'watchlist') bool watchlist});
}

/// @nodoc
class __$$_AccountStateModelCopyWithImpl<$Res>
    extends _$AccountStateModelCopyWithImpl<$Res, _$_AccountStateModel>
    implements _$$_AccountStateModelCopyWith<$Res> {
  __$$_AccountStateModelCopyWithImpl(
      _$_AccountStateModel _value, $Res Function(_$_AccountStateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
    Object? favorite = null,
    Object? rated = freezed,
    Object? watchlist = null,
  }) {
    return _then(_$_AccountStateModel(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
      rated: freezed == rated
          ? _value.rated
          : rated // ignore: cast_nullable_to_non_nullable
              as dynamic,
      watchlist: null == watchlist
          ? _value.watchlist
          : watchlist // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountStateModel implements _AccountStateModel {
  const _$_AccountStateModel(
      {@JsonKey(name: 'id') this.movieId = -1,
      @JsonKey(name: 'favorite') this.favorite = false,
      @JsonKey(name: 'rated') this.rated = false,
      @JsonKey(name: 'watchlist') this.watchlist = false});

  factory _$_AccountStateModel.fromJson(Map<String, dynamic> json) =>
      _$$_AccountStateModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int movieId;
  @override
  @JsonKey(name: 'favorite')
  final bool favorite;
  @override
  @JsonKey(name: 'rated')
  final dynamic rated;
  @override
  @JsonKey(name: 'watchlist')
  final bool watchlist;

  @override
  String toString() {
    return 'AccountStateModel(movieId: $movieId, favorite: $favorite, rated: $rated, watchlist: $watchlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountStateModel &&
            (identical(other.movieId, movieId) || other.movieId == movieId) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite) &&
            const DeepCollectionEquality().equals(other.rated, rated) &&
            (identical(other.watchlist, watchlist) ||
                other.watchlist == watchlist));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, movieId, favorite,
      const DeepCollectionEquality().hash(rated), watchlist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountStateModelCopyWith<_$_AccountStateModel> get copyWith =>
      __$$_AccountStateModelCopyWithImpl<_$_AccountStateModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountStateModelToJson(
      this,
    );
  }
}

abstract class _AccountStateModel implements AccountStateModel {
  const factory _AccountStateModel(
      {@JsonKey(name: 'id') final int movieId,
      @JsonKey(name: 'favorite') final bool favorite,
      @JsonKey(name: 'rated') final dynamic rated,
      @JsonKey(name: 'watchlist') final bool watchlist}) = _$_AccountStateModel;

  factory _AccountStateModel.fromJson(Map<String, dynamic> json) =
      _$_AccountStateModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get movieId;
  @override
  @JsonKey(name: 'favorite')
  bool get favorite;
  @override
  @JsonKey(name: 'rated')
  dynamic get rated;
  @override
  @JsonKey(name: 'watchlist')
  bool get watchlist;
  @override
  @JsonKey(ignore: true)
  _$$_AccountStateModelCopyWith<_$_AccountStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
