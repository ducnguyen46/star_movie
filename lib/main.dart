import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/presentation/blocs/app_setting_cubit/app_setting_cubit.dart';
import 'package:star_movie/share/constants/constants.dart';
import 'package:star_movie/share/navigator/app_router.dart';
import 'package:star_movie/share/observers/observers.dart';
import 'package:star_movie/share/resources/resources.dart';

import 'di/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await dotenv.load(fileName: 'assets/env/star_movie.env');
  await configureDependencies();

  Bloc.observer = AppBlocObserver();
  runApp(
    EasyLocalization(
      supportedLocales: LanguageCode.values.map((e) => e.language).toList(),
      path: 'assets/translations',
      fallbackLocale: LanguageCode.defaultLanguage.language,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppSettingCubit(
        getAppSettingUseCase: getIt.get<GetAppSettingUseCase>(),
        changeAppThemeUseCase: getIt.get<ChangeAppThemeUseCase>(),
        changeAppLanguageUseCase: getIt.get<ChangeAppLanguageUseCase>(),
      )..loadingAppSetting(),
      child: BlocConsumer<AppSettingCubit, AppSettingState>(
        listener: (context, state) {
          // Show error dialog
        },
        buildWhen: (previous, current) {
          if (current is AppSettingError) {
            return false;
          }
          return true;
        },
        builder: (context, state) {
          return MaterialApp.router(
            routerConfig: getIt.get<AppRouter>().router,
            themeMode: _setThemeMode(state),
            theme: lightTheme,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
          );
        },
      ),
    );
  }

  /// set ThemeMode for app
  ThemeMode _setThemeMode(AppSettingState state) {
    if (state is AppSettingApplied) {
      if (state.isDarkMode == true) {
        return ThemeMode.dark;
      } else {
        return ThemeMode.light;
      }
    }
    return ThemeMode.light;
  }
}
