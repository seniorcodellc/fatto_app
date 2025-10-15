import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/utils/app_colors.dart';
import 'package:fatto/features/product_details/data/static/static.dart';
import 'package:flutter/gestures.dart';

class DetailsDescription extends StatelessWidget {
  final bool isExpanded;
  final VoidCallback onToggle;

  const DetailsDescription({
    super.key,
    required this.isExpanded,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    final truncatedText = '${ProductStatics.description.split('. ').first}... ';
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 12.h),
      child: RichText(
        text: TextSpan(
          style: GoogleFonts.plusJakartaSans(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.fontSubtitleColor,
            letterSpacing: 0.5,
            height: 1.5,
          ),
          children: [
            TextSpan(
              text: isExpanded ? ProductStatics.description : truncatedText,
            ),
            TextSpan(
              text: isExpanded ? 'Read less' : 'Read more',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryColor,
              ),
              recognizer: TapGestureRecognizer()..onTap = onToggle,
            ),
          ],
        ),
      ),
    );
  }
}