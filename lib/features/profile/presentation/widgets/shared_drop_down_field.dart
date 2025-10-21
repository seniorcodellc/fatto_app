import 'package:fatto/core/utils/app_assets.dart';
import 'package:fatto/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';

class SharedDropDownField extends StatelessWidget {
  const SharedDropDownField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      icon: SvgPicture.asset(AppAssets.iconsBottomArrow),
      dropdownColor: AppColors.fontWhiteColor,
      isExpanded: true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 22.5, horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.borderColor, width: 1.0.w),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.borderColor, width: 1.0.w),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.primaryColor, width: 1.0.w),
        ),
      ),
      hint: Text(
        hint,
        style: AppStyles.font12Black.copyWith(fontWeight: FontWeight.w400),
      ),
      items: [
        DropdownMenuItem(value: 'value1', child: Text('value1')),
        DropdownMenuItem(value: 'value2', child: Text('value2')),
      ],
      onChanged: (d) {},
    );
  }
}
