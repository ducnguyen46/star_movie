import 'package:flutter/material.dart';
import 'package:star_movie/share/resources/resources.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.white,
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.redPrimary,
    primary: AppColors.redPrimary,
    onPrimary: AppColors.white,
    background: AppColors.white,
    onBackground: AppColors.richBlack,
    outline: AppColors.redPrimary,
    // surface: AppColors.richBlack50,
    // onSurface: AppColors.richBlack,
    error: Colors.red,
    onError: AppColors.white,
    surfaceTint: Colors.transparent,
  ),
);
