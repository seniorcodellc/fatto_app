import 'package:fatto/core/utils/app_assets.dart';
import 'package:fatto/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
class VerificationAppbar extends StatelessWidget implements PreferredSizeWidget {
  const VerificationAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 18.0.h,horizontal: 16.0.w),
        child: Row(
          children: [
            SvgPicture.asset(AppAssets.iconsBackArrow),
            SizedBox(width: 12.0.w,),
            Text('Verification Code',style: GoogleFonts.plusJakartaSans(fontSize: 15.sp,fontWeight: FontWeight.w500,color: AppColors.fontTitleColor),),
          ],
        ),
      ),
    );
  }


  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(65.0.h);
}
