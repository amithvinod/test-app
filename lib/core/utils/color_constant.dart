import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007f = fromHex('#7f050505');

  static Color teal10001 = fromHex('#99eed5');

  static Color black900B2 = fromHex('#b2000000');

  static Color red800 = fromHex('#d51e1e');

  static Color black90090 = fromHex('#90000000');

  static Color red300 = fromHex('#d96464');

  static Color red400 = fromHex('#eb5757');

  static Color black9003f = fromHex('#3f000000');

  static Color green600 = fromHex('#27ae60');

  static Color teal200 = fromHex('#71c5ca');

  static Color deepPurple200 = fromHex('#ae89df');

  static Color teal100 = fromHex('#9be7e5');

  static Color black90087 = fromHex('#87000000');

  static Color teal300 = fromHex('#4ca5cb');

  static Color black90001 = fromHex('#050505');

  static Color black900 = fromHex('#000000');

  static Color yellow800 = fromHex('#efb213');

  static Color black90082 = fromHex('#82000000');

  static Color black9008701 = fromHex('#87050505');

  static Color blueGray900 = fromHex('#2f2a2a');

  static Color blueGray40033 = fromHex('#338a959e');

  static Color cyan20001 = fromHex('#92f0de');

  static Color gray90002 = fromHex('#232323');

  static Color cyan30001 = fromHex('#4cdbd1');

  static Color gray700 = fromHex('#565353');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color gray500 = fromHex('#909090');

  static Color teal3007f = fromHex('#7f4ca5cb');

  static Color tealA10001 = fromHex('#95f1e0');

  static Color blueGray400 = fromHex('#888888');

  static Color gray900 = fromHex('#1e1e1e');

  static Color gray90001 = fromHex('#1e1c1c');

  static Color tealA100 = fromHex('#94f0e0');

  static Color amber300 = fromHex('#f2c94c');

  static Color gray200 = fromHex('#ecebeb');

  static Color gray300 = fromHex('#e0e0e0');

  static Color gray100 = fromHex('#f5f5f5');

  static Color cyan200 = fromHex('#6cefef');

  static Color cyan300 = fromHex('#45e3df');

  static Color red80001 = fromHex('#c71d1d');

  static Color black900Cc = fromHex('#cc050505');

  static Color red80002 = fromHex('#d61722');

  static Color whiteA700 = fromHex('#ffffff');

  static Color whiteA7009b = fromHex('#9bffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
