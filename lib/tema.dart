import 'package:flutter/material.dart';

class TemaVolters {
  static ColorScheme cores = const ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFD7F60C),
    onPrimary: Color(0xFF242A00),
    primaryContainer: Color(0xFF414C00),
    onPrimaryContainer: Color(0xFFA8C004),
    secondary: Color(0xFFC2C9A9),
    onSecondary: Color(0xFF2D331C),
    secondaryContainer: Color(0xFF434931),
    onSecondaryContainer: Color(0xFFDEE5C3),
    tertiary: Color(0xFFD1BCFF),
    onTertiary: Color(0xFF3A1B75),
    tertiaryContainer: Color(0xFF51358D),
    onTertiaryContainer: Color(0xFFEADDFF),
    error: Color(0xFFFFB4AB),
    errorContainer: Color(0xFF93000A),
    onError: Color(0xFF690005),
    onErrorContainer: Color(0xFFFFDAD6),
    background: Color(0xFF061818),
    onBackground: Color(0xFFE5E2DA),
    surface: Color(0xFF082323),
    onSurface: Color(0xFFE5E2DA),
    surfaceVariant: Color(0xFF46483B),
    onSurfaceVariant: Color(0xFFE5E2DA),
    outline: Color(0xFF919283),
    inverseSurface: Color(0xFFE5E2DA),
    onInverseSurface: Color(0xFF1C1C17),
    inversePrimary: Color(0xFF576500),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF247979),
    outlineVariant: Color(0xFF46483B),
    scrim: Color(0xFF000000),
  );

  static CardTheme cartao = CardTheme(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );

  static ThemeData tema = ThemeData(
    useMaterial3: true,
    colorScheme: cores,
    cardTheme: cartao,
    fontFamily: 'Montserrat',
    textTheme: const TextTheme(
      labelLarge: TextStyle(fontWeight: FontWeight.w800),
    ),
  );

  static BoxDecoration bordaVolters = BoxDecoration(
    border: Border.all(color: cores.primary),
    borderRadius: const BorderRadius.all(Radius.circular(10)),
  );

  static TextStyle textStyleGrande = TextStyle(
      fontSize: 20, fontFamily: 'Montserrat', color: TemaVolters.cores.primary);

  static TextStyle textStylePequeno =
      TextStyle(fontFamily: 'Montserrat', color: TemaVolters.cores.primary);

  static ElevatedButtonThemeData temaButton = ElevatedButtonThemeData(
      style:
          ElevatedButton.styleFrom(backgroundColor: TemaVolters.cores.primary));
}
