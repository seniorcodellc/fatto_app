import 'package:flutter/material.dart';

import 'package:fatto/core/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static TextStyle font15Grey = GoogleFonts.plusJakartaSans(
    fontSize: 15,
    color: AppColors.fontSubtitleColor,
  );
  static TextStyle font18Black = TextStyle(
    fontSize: 18,
    color: AppColors.fontTitleColor,
    fontWeight: FontWeight.w700,
  );
  static TextStyle font10PrimaryColor = TextStyle(
    fontSize: 10,
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w600,
  );
  static TextStyle font12White = TextStyle(
    fontSize: 12,
    color: AppColors.fontWhiteColor,
    fontWeight: FontWeight.w400,
  );
  static TextStyle font24White = TextStyle(
    fontSize: 24,
    color: AppColors.fontWhiteColor,
    fontWeight: FontWeight.w700,
  );
  static TextStyle font14Black = TextStyle(
    fontSize: 14,
    color: AppColors.fontTitleColor,
    fontWeight: FontWeight.w600,
  );
  static TextStyle font16Black = TextStyle(
    fontSize: 16,
    color: AppColors.fontTitleColor,
    fontWeight: FontWeight.w600,
  );
}
