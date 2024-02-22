import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/share/constants/constants.dart';
import 'package:star_movie/share/exceptions/exception_mapper/exception_mapper.dart';
import 'package:star_movie/share/exceptions/exceptions.dart';

part 'app_setting_state.dart';
part 'app_setting_cubit.freezed.dart';

class AppSettingCubit extends Cubit<AppSettingState> {
  AppSettingCubit({
    required GetAppSettingUseCase getAppSettingUseCase,
    required ChangeAppThemeUseCase changeAppThemeUseCase,
    required ChangeAppLanguageUseCase changeAppLanguageUseCase,
  })  : _getAppSettingUseCase = getAppSettingUseCase,
        _changeAppThemeUseCase = changeAppThemeUseCase,
        _changeAppLanguageUseCase = changeAppLanguageUseCase,
        super(const AppSettingState.loading());

  final GetAppSettingUseCase _getAppSettingUseCase;
  final ChangeAppLanguageUseCase _changeAppLanguageUseCase;
  final ChangeAppThemeUseCase _changeAppThemeUseCase;

  Future<void> loadingAppSetting() async {
    final appSettingEither =
        await _getAppSettingUseCase.call(const GetAppSettingParams());
    return appSettingEither.fold(
      (exception) => emit(AppSettingState.error(
        messages: ExceptionMessagesMapper.map(exception),
        appException: exception,
      )),
      (appSetting) => emit(AppSettingState.applied(
        isDarkMode: appSetting.isDarkMode,
        language: appSetting.languageCode,
      )),
    );
  }

  Future<void> changeAppLanguage({required LanguageCode languageCode}) async {
    emit(const AppSettingState.changing());
    final languageEither = await _changeAppLanguageUseCase.call(
      ChangeAppLanguageUseCaseParams(
        languageCode: languageCode,
      ),
    );

    return languageEither.fold(
      (ex) => emit(AppSettingState.error(
        messages: ExceptionMessagesMapper.map(ex),
        appException: ex,
      )),
      (result) => emit(AppSettingState.applied(language: languageCode)),
    );
  }

  Future<void> changeAppTheme() async {}
}
