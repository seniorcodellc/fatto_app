import 'package:fatto/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
class CancelButton extends StatelessWidget {
  const CancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:() => Navigator.pop(context),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.0.w),
        decoration: BoxDecoration(
          color: AppColors.bgColor,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: AppColors.borderColor
          )
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 22.0.h),
          child: Center(
            child: Text(
              'Cancel',
              style: AppStyles.font14Black
            ),
          ),
        ),
      ),
    );
  }
}
