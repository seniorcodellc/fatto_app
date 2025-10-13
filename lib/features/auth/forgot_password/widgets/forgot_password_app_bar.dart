import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
class ForgotPasswordAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ForgotPasswordAppBar({super.key, required this.number, required this.title});
 final String number ;
 final String title;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 18.0.h,horizontal: 16.0.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(AppAssets.iconsBackArrow),
            Text(title,style: GoogleFonts.plusJakartaSans(fontSize: 15.sp,fontWeight: FontWeight.w700,color: AppColors.fontTitleColor),),
            Text(number,style: GoogleFonts.plusJakartaSans(fontSize: 15.sp,fontWeight: FontWeight.w500,color: AppColors.fontTitleColor),),
          ],
        ),
      ),
    );
  }


  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(65.0.h);

}
