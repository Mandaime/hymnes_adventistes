import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Palette {
  static Color primary = Color(Hive.box('settings').get('color'));
  static const Color secondary = Color(0xFF007681);
  static const Color tertiary = Color(0xFF7D2248);
  static const Color light = Color(0xFFEAEAEA);
  static const Color dark = Color(0xFF797D7A);
}
