import 'package:flutter/material.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,

  // 🌿 Primary – Fresh Teal
  primary: Color(0xFF06837F),
  onPrimary: Colors.white,
  primaryContainer: Color(0xFF9FE5E2),
  onPrimaryContainer: Color(0xFF00201F),

  // 🍟 Secondary – Appetite Yellow (CTA)
  secondary: Color(0xFFFED811),
  onSecondary: Color(0xFF2B2300),
  secondaryContainer: Color(0xFFFFF1A6),
  onSecondaryContainer: Color(0xFF241A00),

  // 🍃 Tertiary – Soft Green Accent
  tertiary: Color(0xFF4FA6A2),
  onTertiary: Colors.white,
  tertiaryContainer: Color(0xFFCBEFED),
  onTertiaryContainer: Color(0xFF00201F),

  // ❌ Error
  error: Color(0xFFBA1A1A),
  onError: Colors.white,
  errorContainer: Color(0xFFFFDAD6),
  onErrorContainer: Color(0xFF410002),

  // 📜 Surfaces – Menu Feel
  surface: Color(0xFFFFF6C4),
  onSurface: Color(0xFF1B1B1B),
  surfaceContainerHighest: Color(0xFFE7E2B8),
  onSurfaceVariant: Color(0xFF4A4A4A),

  // 🧾 Borders / Dividers
  outline: Color(0xFF8A8670),
  outlineVariant: Color(0xFFCFC9A0),

  shadow: Colors.black,
  scrim: Colors.black,

  inverseSurface: Color(0xFF2A2A2A),
  onInverseSurface: Color(0xFFF2F2F2),
  inversePrimary: Color(0xFF55D6D0),

  surfaceTint: Color(0xFF06837F),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,

  // 🌿 Primary
  primary: Color(0xFF55D6D0),
  onPrimary: Color(0xFF003735),
  primaryContainer: Color(0xFF004F4C),
  onPrimaryContainer: Color(0xFF9FE5E2),

  // 🍟 Secondary – CTA
  secondary: Color(0xFFE0C100),
  onSecondary: Color(0xFF3A3000),
  secondaryContainer: Color(0xFF564500),
  onSecondaryContainer: Color(0xFFFFF1A6),

  // 🍃 Tertiary
  tertiary: Color(0xFF8EDAD6),
  onTertiary: Color(0xFF003735),
  tertiaryContainer: Color(0xFF00504D),
  onTertiaryContainer: Color(0xFFCBEFED),

  // ❌ Error
  error: Color(0xFFFFB4AB),
  onError: Color(0xFF690005),
  errorContainer: Color(0xFF93000A),
  onErrorContainer: Color(0xFFFFDAD6),

  // 🌙 Surfaces
  surface: Color(0xFF0E1F1E),
  onSurface: Color(0xFFE6E6E6),
  surfaceContainerHighest: Color(0xFF3F4948),
  onSurfaceVariant: Color(0xFFC1C7C6),

  outline: Color(0xFF8B9190),
  outlineVariant: Color(0xFF3F4948),

  shadow: Colors.black,
  scrim: Colors.black,

  inverseSurface: Color(0xFFE6E6E6),
  onInverseSurface: Color(0xFF1B1B1B),
  inversePrimary: Color(0xFF06837F),

  surfaceTint: Color(0xFF55D6D0),
);
