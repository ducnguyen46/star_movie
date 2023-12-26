part of 'app_setting_cubit.dart';

/** State **/

/// loadingSetting,
/// changingSetting,
/// appliedSetting,
/// error

@freezed
class AppSettingState with _$AppSettingState {
  const factory AppSettingState.loading() = AppSettingLoading;
  const factory AppSettingState.changing() = AppSettingChanging;

  const factory AppSettingState.applied({
    bool? isDarkMode,
    LanguageCode? language,
  }) = AppSettingApplied;

  const factory AppSettingState.error({
    AppException? appException,
    @Default('') String messages,
  }) = AppSettingError;
}
