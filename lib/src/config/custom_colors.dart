import 'package:flutter/material.dart';

Map<int, Color> _swatchOpacity = {
  50: const Color(0xff38b95e), //10%
  100: const Color(0xff38b95e), //20%
  200: const Color(0xff4ec170), //30%
  300: const Color(0xff64c882), //40%
  400: const Color(0xff7ad094), //50%
  500: const Color(0xff91d8a6), //60%
  600: const Color(0xffa7e0b7), //70%
  700: const Color(0xffbde8c9), //80%
  800: const Color(0xffd3efdb), //90%
  900: const Color(0xffe9f7ed), //100%
};

abstract class CustomColor {
  static MaterialColor customSwatchColor =
      MaterialColor(0xFF22B14C, _swatchOpacity);
}
