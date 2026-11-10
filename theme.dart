import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// هوية صدى: نيون سينمائي (Synthwave) على أسود بنفسجي عميق
class SadaColors {
  static const bg = Color(0xFF07050F);       // أسود بنفسجي
  static const surface = Color(0xFF110C1F);
  static const card = Color(0xFF1A1330);
  static const neon = Color(0xFFFF2E93);     // ماجنتا نيون (اللون الرئيسي)
  static const cyan = Color(0xFF00E5FF);     // سيان كهربائي
  static const violet = Color(0xFF8B3DFF);   // بنفسجي نيون
  static const gold = Color(0xFFFFC857);     // ذهبي سينمائي للتقييم/المميز
}

ThemeData sadaTheme() {
  final base = ThemeData.dark(useMaterial3: true);
  return base.copyWith(
    scaffoldBackgroundColor: SadaColors.bg,
    colorScheme: const ColorScheme.dark(
        primary: SadaColors.neon, secondary: SadaColors.cyan, tertiary: SadaColors.violet, surface: SadaColors.surface),
    textTheme: GoogleFonts.cairoTextTheme(base.textTheme),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: SadaColors.card,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide.none),
      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: SadaColors.cyan)),
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: SadaColors.surface,
      indicatorColor: SadaColors.neon.withOpacity(0.22),
      labelTextStyle: WidgetStateProperty.resolveWith((s) => TextStyle(
          fontWeight: FontWeight.bold, color: s.contains(WidgetState.selected) ? SadaColors.cyan : Colors.white60)),
    ),
  );
}
