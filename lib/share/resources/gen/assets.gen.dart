/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsEnvGen {
  const $AssetsEnvGen();

  /// File path: assets/env/star_movie.env
  String get starMovie => 'assets/env/star_movie.env';

  /// List of all assets
  List<String> get values => [starMovie];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/grey_logo.svg
  SvgGenImage get greyLogo => const SvgGenImage('assets/images/grey_logo.svg');

  $AssetsImagesIconsGen get icons => const $AssetsImagesIconsGen();

  /// File path: assets/images/red_logo.svg
  SvgGenImage get redLogo => const SvgGenImage('assets/images/red_logo.svg');

  /// File path: assets/images/white_logo.svg
  SvgGenImage get whiteLogo =>
      const SvgGenImage('assets/images/white_logo.svg');

  /// List of all assets
  List<SvgGenImage> get values => [greyLogo, redLogo, whiteLogo];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/en-US.json
  String get enUS => 'assets/translations/en-US.json';

  /// File path: assets/translations/vi-VN.json
  String get viVN => 'assets/translations/vi-VN.json';

  /// List of all assets
  List<String> get values => [enUS, viVN];
}

class $AssetsImagesIconsGen {
  const $AssetsImagesIconsGen();

  /// File path: assets/images/icons/ic_alarm.svg
  SvgGenImage get icAlarm =>
      const SvgGenImage('assets/images/icons/ic_alarm.svg');

  /// File path: assets/images/icons/ic_alarm_ac.svg
  SvgGenImage get icAlarmAc =>
      const SvgGenImage('assets/images/icons/ic_alarm_ac.svg');

  /// File path: assets/images/icons/ic_avatar.svg
  SvgGenImage get icAvatar =>
      const SvgGenImage('assets/images/icons/ic_avatar.svg');

  /// File path: assets/images/icons/ic_event_ticket.svg
  SvgGenImage get icEventTicket =>
      const SvgGenImage('assets/images/icons/ic_event_ticket.svg');

  /// File path: assets/images/icons/ic_event_ticket_ac.svg
  SvgGenImage get icEventTicketAc =>
      const SvgGenImage('assets/images/icons/ic_event_ticket_ac.svg');

  /// File path: assets/images/icons/ic_img_error.svg
  SvgGenImage get icImgError =>
      const SvgGenImage('assets/images/icons/ic_img_error.svg');

  /// File path: assets/images/icons/ic_movie_reel.svg
  SvgGenImage get icMovieReel =>
      const SvgGenImage('assets/images/icons/ic_movie_reel.svg');

  /// File path: assets/images/icons/ic_movie_reel_ac.svg
  SvgGenImage get icMovieReelAc =>
      const SvgGenImage('assets/images/icons/ic_movie_reel_ac.svg');

  /// File path: assets/images/icons/ic_profile.svg
  SvgGenImage get icProfile =>
      const SvgGenImage('assets/images/icons/ic_profile.svg');

  /// File path: assets/images/icons/ic_profile_ac.svg
  SvgGenImage get icProfileAc =>
      const SvgGenImage('assets/images/icons/ic_profile_ac.svg');

  /// File path: assets/images/icons/ic_zoom.svg
  SvgGenImage get icZoom =>
      const SvgGenImage('assets/images/icons/ic_zoom.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        icAlarm,
        icAlarmAc,
        icAvatar,
        icEventTicket,
        icEventTicketAc,
        icImgError,
        icMovieReel,
        icMovieReelAc,
        icProfile,
        icProfileAc,
        icZoom
      ];
}

class Assets {
  Assets._();

  static const $AssetsEnvGen env = $AssetsEnvGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
