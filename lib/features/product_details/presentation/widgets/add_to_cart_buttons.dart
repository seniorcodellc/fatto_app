import 'package:fatto/core/utils/app_assets.dart';
import 'package:fatto/features/product_details/presentation/widgets/popup_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/utils/app_colors.dart';

class AddToCartButtons extends StatelessWidget {
  const AddToCartButtons({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            content: PopupMessage(),
            duration: const Duration(seconds: 3),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: AppColors.primaryColor,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 28.w),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Add To Cart',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14.sp,
                  color: AppColors.fontWhiteColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: 8.w),
              SvgPicture.asset(
                AppAssets.iconsMyCart,
                color: AppColors.fontWhiteColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}

