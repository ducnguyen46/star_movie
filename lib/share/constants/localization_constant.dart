import 'package:flutter/material.dart';

class LocalizationConstant {
  static const enUS = Locale('en', 'US');
  static const viVN = Locale('vi', 'VN');
}

enum LanguageCode {
  en(language: LocalizationConstant.enUS),
  vn(language: LocalizationConstant.viVN);

  const LanguageCode({
    required this.language,
  });

  final Locale language;

  static LanguageCode get defaultLanguage => en;
}
