import 'package:freezed_annotation/freezed_annotation.dart';

part 'region_model.freezed.dart';
part 'region_model.g.dart';

@freezed
class RegionModel with _$RegionModel {
  const factory RegionModel({
    @JsonKey(name: 'iso_3166_1') @Default('') String regionCode,
    @JsonKey(name: 'english_name') @Default('') String englishName,
    @JsonKey(name: 'native_name') @Default('') String nativeName,
  }) = _RegionModel;

  factory RegionModel.fromJson(Map<String, dynamic> json) => _$RegionModelFromJson(json);
}

@freezed
class RegionsModel with _$RegionsModel {
  const factory RegionsModel({
    @JsonKey(name: 'regions') @Default([]) List<RegionModel> regions,
  }) = _RegionsModel;

  factory RegionsModel.fromJson(Map<String, dynamic> json) => _$RegionsModelFromJson(json);
}