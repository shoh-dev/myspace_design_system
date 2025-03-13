import 'package:flutter/material.dart';

class AppTheme {
  final double? borderRadius;
  final Color? seedDark;
  final Color? surfaceDark;
  final Color? scaffoldBackgroundColorDark;

  AppTheme({
    this.borderRadius,
    this.surfaceDark,
    this.seedDark,
    this.scaffoldBackgroundColorDark,
  });

  late final _colorSchemeLight = ColorScheme.fromSeed(
    seedColor: Colors.blue,
    brightness: Brightness.light,
  );
  late final _colorSchemeDark = ColorScheme.fromSeed(
    seedColor: seedDark ?? Colors.blue,
    brightness: Brightness.dark,
    surface: surfaceDark,
  );

  final _textThemeLight = ThemeData.light().textTheme;
  final _textThemeDark = ThemeData.dark().textTheme;

  late final _border = RoundedRectangleBorder(
    borderRadius: borderRadius != null
        ? BorderRadius.circular(borderRadius!)
        : BorderRadius.zero,
  );

  // Filled Button Theme Data

  late final _filledButtonThemeDataLight = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      shape: _border,
    ),
  );
  late final _filledButtonThemeDataDark = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      shape: _border,
    ),
  );

  // Filled Button Theme Data End

  // Outlined Button Theme Data

  late final _outlinedButtonThemeDataLight = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: _border,
    ),
  );
  late final _outlinedButtonThemeDataDark = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: _border,
    ),
  );

  // Outlined Button Theme Data End

  // Text Button Theme Data

  late final _textButtonThemeDataLight = TextButtonThemeData(
    style: TextButton.styleFrom(
      shape: _border,
    ),
  );
  late final _textButtonThemeDataDark = TextButtonThemeData(
    style: TextButton.styleFrom(
      shape: _border,
    ),
  );

  // Text Button Theme Data End

  // Icon Button Theme Data

  late final _iconButtonThemeDataLight = IconButtonThemeData(
    style: IconButton.styleFrom(
      shape: _border,
      backgroundColor: _colorSchemeLight.primary,
      foregroundColor: _colorSchemeLight.onPrimary,
    ),
  );
  late final _iconButtonThemeDataDark = IconButtonThemeData(
    style: IconButton.styleFrom(
      shape: _border,
      backgroundColor: _colorSchemeDark.primary,
      foregroundColor: _colorSchemeDark.onPrimary,
    ),
  );

  // Icon Button Theme Data End

  // Input Theme Data Start

  late final _textFieldThemeDataLight = InputDecorationTheme(
    filled: true,
    floatingLabelBehavior: FloatingLabelBehavior.never,
    hintStyle: TextStyle(
      fontSize: 14,
      color: _colorSchemeLight.onSurface.withValues(alpha: 0.38),
    ),
    border: const OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.zero,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: _colorSchemeLight.primary,
        width: 1.5,
      ),
      borderRadius: _border.borderRadius as BorderRadius,
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: _colorSchemeLight.error,
        width: 1,
      ),
      borderRadius: _border.borderRadius as BorderRadius,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: _colorSchemeLight.error,
        width: 1,
      ),
      borderRadius: _border.borderRadius as BorderRadius,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: _colorSchemeLight.outline,
        width: 1,
      ),
      borderRadius: _border.borderRadius as BorderRadius,
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.transparent,
        width: 0,
      ),
      borderRadius: _border.borderRadius as BorderRadius,
    ),
  );

  late final _textFieldThemeDataDark = InputDecorationTheme(
    filled: true,
    floatingLabelBehavior: FloatingLabelBehavior.never,
    hintStyle: TextStyle(
      fontSize: 14,
      color: _colorSchemeDark.onSurface.withValues(alpha: 0.38),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: _border.borderRadius as BorderRadius,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: _colorSchemeDark.primary,
        width: 1.5,
      ),
      borderRadius: _border.borderRadius as BorderRadius,
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: _colorSchemeDark.error,
        width: 1,
      ),
      borderRadius: _border.borderRadius as BorderRadius,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: _colorSchemeDark.error,
        width: 1,
      ),
      borderRadius: _border.borderRadius as BorderRadius,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: _colorSchemeDark.outline,
        width: 1,
      ),
      borderRadius: _border.borderRadius as BorderRadius,
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.transparent,
        width: 0,
      ),
      borderRadius: _border.borderRadius as BorderRadius,
    ),
  );

  // Input Theme Data End

  // // Menu Theme Data Start

  // late final _menuThemeDataLight = const MenuThemeData();

  // late final _menuThemeDataDark = const MenuThemeData();

  // // Menu Theme Data End

  // Dropdown Menu Theme Data Start

  late final _dropdownMenuThemeDataLight = DropdownMenuThemeData(
    inputDecorationTheme: _textFieldThemeDataLight,
    menuStyle: MenuStyle(
      side:
          WidgetStatePropertyAll(BorderSide(color: _colorSchemeLight.outline)),
    ),
  );

  late final _dropdownMenuThemeDataDark = DropdownMenuThemeData(
    inputDecorationTheme: _textFieldThemeDataDark,
    menuStyle: MenuStyle(
      side: WidgetStatePropertyAll(BorderSide(color: _colorSchemeDark.outline)),
    ),
  );

  // Dropdown Menu Theme Data End

  // Popup Menu  Theme Data Start

  late final _popupMenuThemeDataLight = PopupMenuThemeData(
    shape: _border,
    position: PopupMenuPosition.under,
    elevation: 4,
  );

  late final _popupMenuThemeDataDark = PopupMenuThemeData(
    shape: _border,
    position: PopupMenuPosition.under,
    elevation: 4,
  );

  // Popup Menu Theme Data End

  // Card Theme Data Start

  late final _cardThemeDataDark = CardThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: _border.borderRadius / 4,
    ),
  );

  // Card Theme Data End

  late final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: _colorSchemeLight.surface,
    colorScheme: _colorSchemeLight,
    textTheme: _textThemeLight,
    filledButtonTheme: _filledButtonThemeDataLight,
    outlinedButtonTheme: _outlinedButtonThemeDataLight,
    textButtonTheme: _textButtonThemeDataLight,
    iconButtonTheme: _iconButtonThemeDataLight,
    inputDecorationTheme: _textFieldThemeDataLight,
    // menuTheme: _menuThemeDataLight,
    dropdownMenuTheme: _dropdownMenuThemeDataLight,
    popupMenuTheme: _popupMenuThemeDataLight,
  );

  late final ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: _colorSchemeDark.surface,
    colorScheme: _colorSchemeDark,
    textTheme: _textThemeDark,
    filledButtonTheme: _filledButtonThemeDataDark,
    outlinedButtonTheme: _outlinedButtonThemeDataDark,
    textButtonTheme: _textButtonThemeDataDark,
    iconButtonTheme: _iconButtonThemeDataDark,
    inputDecorationTheme: _textFieldThemeDataDark,
    // menuTheme: _menuThemeDataDark,
    dropdownMenuTheme: _dropdownMenuThemeDataDark,
    popupMenuTheme: _popupMenuThemeDataDark,
    cardTheme: _cardThemeDataDark,
  );
}
