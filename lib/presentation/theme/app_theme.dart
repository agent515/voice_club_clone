import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voice_club_clone/presentation/theme/app_colors.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: AppColors.sasquatchSocks,
          onPrimary: AppColors.white,
          secondary: AppColors.royalOrange,
          onSecondary: AppColors.white,
          error: AppColors.bostonUniversityRed,
          onError: AppColors.white,
          background: AppColors.offWhite,
          onBackground: AppColors.chineseBlack,
          surface: AppColors.white,
          onSurface: AppColors.chineseBlack,
        ),
        appBarTheme: AppBarTheme(
          elevation: 1,
          backgroundColor: AppColors.white,
          titleTextStyle: getTextTheme(ThemeMode.light).titleMedium,
        ),
        textTheme: getTextTheme(ThemeMode.light),
      );

  static TextTheme getTextTheme(ThemeMode mode) {
    Color textColor =
        mode == ThemeMode.dark ? AppColors.white : AppColors.chineseBlack;
    return TextTheme(
      headlineLarge: GoogleFonts.openSans(
        fontSize: 32,
        color: textColor,
      ),
      headlineMedium: GoogleFonts.openSans(
        fontSize: 28,
        color: textColor,
      ),
      headlineSmall: GoogleFonts.openSans(
        fontSize: 24,
        color: textColor,
      ),
      titleLarge: GoogleFonts.openSans(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: textColor,
      ),
      titleMedium: GoogleFonts.openSans(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: textColor,
      ),
      titleSmall: GoogleFonts.openSans(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: textColor,
      ),
      labelLarge: GoogleFonts.openSans(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: textColor,
      ),
      labelMedium: GoogleFonts.openSans(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: textColor,
      ),
      labelSmall: GoogleFonts.openSans(
        fontSize: 10,
        fontWeight: FontWeight.w600,
        color: textColor,
      ),
      bodyLarge: GoogleFonts.openSans(
        fontSize: 16,
        color: textColor,
      ),
      bodyMedium: GoogleFonts.openSans(
        fontSize: 14,
        color: textColor,
      ),
      bodySmall: GoogleFonts.openSans(
        fontSize: 12,
        color: textColor,
      ),
    );
  }
}
