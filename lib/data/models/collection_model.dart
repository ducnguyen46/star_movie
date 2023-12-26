import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_model.freezed.dart';
part 'collection_model.g.dart';

@freezed
class CollectionModel with _$CollectionModel {
  const factory CollectionModel({
    @JsonKey(name: 'adult') @Default(false) bool adult,
    @JsonKey(name: 'id') @Default(-1) int id,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'original_name') @Default('') String originalName,
    @JsonKey(name: 'overview') @Default('') String overview,
    @JsonKey(name: 'backdrop_path') @Default('') String backdropPath,
    @JsonKey(name: 'poster_path') @Default('') String posterPath,
  }) = _CollectionModel;

  factory CollectionModel.fromJson(Map<String, dynamic> json) =>
      _$CollectionModelFromJson(json);
}
