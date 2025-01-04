import 'package:flutter/material.dart';

class FCodeTheme {
  //singleton instance
  static final FCodeTheme _instance = FCodeTheme._internal();

  factory FCodeTheme() {
    return _instance;
  }

  FCodeTheme._internal();

  final _colorSchemeLight = ColorScheme.fromSeed(
      seedColor: Colors.blue, brightness: Brightness.light);
  final _colorSchemeDark =
      ColorScheme.fromSeed(seedColor: Colors.blue, brightness: Brightness.dark);

  final _textThemeLight = ThemeData.light().textTheme;
  final _textThemeDark = ThemeData.dark().textTheme;

  final _noBorder = const RoundedRectangleBorder();

  // Filled Button Theme Data

  late final _filledButtonThemeDataLight = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      shape: _noBorder,
    ),
  );
  late final _filledButtonThemeDataDark = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      shape: _noBorder,
    ),
  );

  // Filled Button Theme Data End

  // Outlined Button Theme Data

  late final _outlinedButtonThemeDataLight = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: _noBorder,
    ),
  );
  late final _outlinedButtonThemeDataDark = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: _noBorder,
    ),
  );

  // Outlined Button Theme Data End

  // Text Button Theme Data

  late final _textButtonThemeDataLight = TextButtonThemeData(
    style: TextButton.styleFrom(
      shape: _noBorder,
    ),
  );
  late final _textButtonThemeDataDark = TextButtonThemeData(
    style: TextButton.styleFrom(
      shape: _noBorder,
    ),
  );

  // Text Button Theme Data End

  // Icon Button Theme Data

  late final _iconButtonThemeDataLight = IconButtonThemeData(
    style: IconButton.styleFrom(
      shape: _noBorder,
      backgroundColor: _colorSchemeLight.primary,
      foregroundColor: _colorSchemeLight.onPrimary,
    ),
  );
  late final _iconButtonThemeDataDark = IconButtonThemeData(
    style: IconButton.styleFrom(
      shape: _noBorder,
      backgroundColor: _colorSchemeDark.primary,
      foregroundColor: _colorSchemeDark.onPrimary,
    ),
  );

  // Icon Button Theme Data End

  late final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.grey.shade300,
    colorScheme: _colorSchemeLight,
    textTheme: _textThemeLight,
    filledButtonTheme: _filledButtonThemeDataLight,
    outlinedButtonTheme: _outlinedButtonThemeDataLight,
    textButtonTheme: _textButtonThemeDataLight,
    iconButtonTheme: _iconButtonThemeDataLight,
  );

  late final ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.grey.shade900,
    colorScheme: _colorSchemeDark,
    textTheme: _textThemeDark,
    filledButtonTheme: _filledButtonThemeDataDark,
    outlinedButtonTheme: _outlinedButtonThemeDataDark,
    textButtonTheme: _textButtonThemeDataDark,
    iconButtonTheme: _iconButtonThemeDataDark,
  );
}
