import 'package:flutter/material.dart';

class TBackgroundBoxTheme {
  TBackgroundBoxTheme._();

  static final lightBackgroundBoxTheme = BoxDecoration(
    color: Color(0xFFFFFFDF8),
    border: Border.all(color: Color(0xFFFEFE5CC), width: 9.0),
    borderRadius: const BorderRadius.all(Radius.circular(20),
    ),
  );

  static final darkBackgroundBoxTheme = BoxDecoration(
    color: const Color(0xFFFEFE5CC),
    border: Border.all(color: const Color(0xFFFFFFDF8), width: 9.0),
    borderRadius: const BorderRadius.all(Radius.circular(20),
    ),
  );
}