import 'package:freezed_annotation/freezed_annotation.dart';

part 'production_country_model.freezed.dart';
part 'production_country_model.g.dart';

@freezed
class ProductionCountry with _$ProductionCountry {
  const factory ProductionCountry({
    @JsonKey(name: 'iso_3166_1') @Default('') String countryCode,
    @JsonKey(name: 'name') @Default('') String countryName,
  }) = _ProductionCountry;

  factory ProductionCountry.fromJson(Map<String, dynamic> json) =>
      _$ProductionCountryFromJson(json);
}
