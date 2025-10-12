import 'package:fatto/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class OnboardingDots extends StatelessWidget {
  const OnboardingDots({
    super.key,
    required this.currentPage,
  });

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 28.h),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            3,
                (index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 3.0.w),
              width: 8.w,
              height: 8.w,
              decoration: ShapeDecoration(
                color: index == currentPage ? AppColors.primaryColor : AppColors.dotsColor,
                shape: const CircleBorder(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}