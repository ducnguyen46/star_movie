import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static final white = HexColor('FFFFFF');
  static final redPrimary = HexColor('E51937');
  static final skyBlue = HexColor('47CFFF');
  static final yellow = HexColor('F8C42F');
  static final richBlack = HexColor('0F1B2B');
  static final richBlack50 = HexColor('0F1B2B', opacityVal: 50);
  static final rickBlack30 = HexColor('0F1B2B', opacityVal: 30);
  static final richBlack20 = HexColor('0F1B2B', opacityVal: 20);
}

class HexColor extends Color {
  HexColor(
    this.hexVal, {
    this.opacityVal = 100,
  }) : super(_colorHex(hexVal, opacityVal));

  final String hexVal;
  final int opacityVal;

  static int _colorHex(String hexVal, int opacityVal) {
    if (hexVal.length == 6 || hexVal.length == 7) {
      hexVal = hexVal.replaceFirst('#', '').toUpperCase();
    }

    // Full opacity 100% is 255 in RGB value
    // so opacity from 0 - 100% is 0 - 255
    // [opacityVal] is %opacity
    String opacityHex = ((opacityVal * 255) ~/ 100).toRadixString(16).toUpperCase();

    return int.parse('0x$opacityHex$hexVal');
  }
}

extension $AppColor on Color {
  Color darken(double percentDarken) {
    assert(percentDarken >= 0);
    assert(percentDarken <= 100);

    final hslColor = HSLColor.fromColor(this);
    return hslColor.withLightness(hslColor.lightness - percentDarken / 100).toColor();
  }

  Color lighten(double percentLighten) {
    assert(percentLighten >= 0);
    assert(percentLighten <= 100);

    final hslColor = HSLColor.fromColor(this);
    return hslColor.withLightness(hslColor.lightness + percentLighten / 100).toColor();
  }
}
