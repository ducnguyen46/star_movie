import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_model.freezed.dart';
part 'language_model.g.dart';

@freezed
class LanguageModel with _$LanguageModel {
  const factory LanguageModel({
    @JsonKey(name: 'iso_639_1') @Default('') String code,
    @JsonKey(name: 'english_name') @Default('') String englishName,
    @JsonKey(name: 'name') @Default('') String nativeName,
  }) = _LanguageModel;

  factory LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageModelFromJson(json);
}

@freezed
class LanguagesModel with _$LanguagesModel {
  const factory LanguagesModel({
    @Default([]) List<LanguageModel> languages,
  }) = _LanguagesModel;

  factory LanguagesModel.fromList(List data) {
    final languages = data
        .map((e) => LanguageModel.fromJson(e as Map<String, dynamic>))
        .toList();
    return LanguagesModel(languages: languages);
  }
}
