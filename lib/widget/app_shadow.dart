import 'package:flutter/cupertino.dart';
import 'package:quizai/style/app_colors.dart';

class AppShadow {
  static BoxShadow glassEffect = BoxShadow(
    color: AppColors.glass.withOpacity(0.15),
    offset: const Offset(0, 12),
    blurRadius: 96,
    spreadRadius: 0,
  );
  static BoxShadow textEffect = BoxShadow(
    color: AppColors.darkPrimary.withOpacity(0.45),
    offset: const Offset(8, 8),
    blurRadius: 78,
    spreadRadius: 0.0,
  );
  static BoxShadow buttonEffect = BoxShadow(
    color: AppColors.darkPrimary.withOpacity(0.3),
    offset: const Offset(2, 2),
    blurRadius: 2,
    spreadRadius: 0.8,
  );
}
