import 'package:flutter/material.dart';
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
        backgroundColor: AppColors.sasquatchSocks,
      ));
}
