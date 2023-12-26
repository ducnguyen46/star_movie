import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:star_movie/share/constants/localization_constant.dart';

part 'app_setting.freezed.dart';

@freezed
class AppSetting with _$AppSetting {
  const factory AppSetting({
    @Default(LanguageCode.en) LanguageCode languageCode,
    @Default(false) bool isDarkMode,
    @Default(false) bool isOpened,
  }) = _AppSetting;
}
