import 'package:flutter/material.dart';

import '../constants/app_fonts.dart';

/// Only the fonts are set here. Colours stay on the Material defaults until
/// the graphic charter is chosen.
abstract final class AppTheme {
  static ThemeData forLocale(Locale locale) {
    final isArabic = locale.languageCode == 'ar';
    return ThemeData(
      useMaterial3: true,
      fontFamily: isArabic ? AppFonts.arabic : AppFonts.latin,
      fontFamilyFallback: const [AppFonts.latin, AppFonts.arabic],
    );
  }
}
