import 'package:flutter/material.dart';

class AppConstants {
  AppConstants._();
  
  // COLORS
  static const Color primaryDark = Color(0xFF1B4332);
  static const Color primaryGreen = Color(0xFF2D6A4F);
  static const Color secondaryGreen = Color(0xFF52B788);
  static const Color lightGreen = Color(0xFFD8F3DC);
  static const Color backgroundLight = Color(0xFFF1F8F4);
  static const Color white = Color(0xFFFFFFFF);
  static const Color textDark = Color(0xFF1B4332);
  static const Color textLight = Color(0xFF52B788);
  
  // TEXT STYLES
  static const TextStyle heading1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: textDark,
  );
  
  static const TextStyle heading2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: textDark,
  );
  
  static const TextStyle heading3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: textDark,
  );
  
  static const TextStyle bodyText = TextStyle(
    fontSize: 15,
    color: textLight,
    height: 1.6,
  );
  
  static const TextStyle caption = TextStyle(
    fontSize: 12,
    color: textLight,
    fontWeight: FontWeight.w500,
  );
  
  static const TextStyle buttonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: white,
  );
  
  // SPACING
  static const double spacingXS = 4.0;
  static const double spacingS = 8.0;
  static const double spacingM = 16.0;
  static const double spacingL = 24.0;
  static const double spacingXL = 32.0;
  
  // BORDER RADIUS
  static const double radiusS = 12.0;
  static const double radiusM = 16.0;
  static const double radiusL = 20.0;
  static const double radiusXL = 30.0;
  
  // SHADOWS
  static List<BoxShadow> cardShadow = [
    BoxShadow(
      color: primaryGreen.withOpacity(0.08),
      blurRadius: 15,
      offset: const Offset(0, 5),
    ),
  ];
  
  static List<BoxShadow> buttonShadow = [
    BoxShadow(
      color: primaryGreen.withOpacity(0.3),
      blurRadius: 8,
      offset: const Offset(0, 4),
    ),
  ];
  
  static List<BoxShadow> lightShadow = [
    BoxShadow(
      color: Colors.black.withOpacity(0.05),
      blurRadius: 10,
      offset: const Offset(0, 2),
    ),
  ];
  
  // ANIMATIONS
  static const Duration animationDuration = Duration(milliseconds: 200);
  static const Duration animationDurationLong = Duration(milliseconds: 300);
  static const Duration splashAnimationDuration = Duration(milliseconds: 1500);
  static const Duration splashDisplayDuration = Duration(seconds: 3);
}