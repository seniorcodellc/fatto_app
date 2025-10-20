import 'package:fatto/core/utils/app_assets.dart';
import 'package:fatto/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
class VerificationAppbar extends StatelessWidget implements PreferredSizeWidget {
  const VerificationAppbar({super.key, required this.title});
final String title ;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding:  EdgeInsets.only(top: 16.0.h,left: 16.0.w,right: 16.0.w,bottom: 8.0.h),
        child: Row(
          children: [
            SvgPicture.asset(AppAssets.iconsBackArrow),
            SizedBox(width: 12.0.w,),
            Text(title,style: GoogleFonts.plusJakartaSans(fontSize: 15.sp,fontWeight: FontWeight.w500,color: AppColors.fontTitleColor),),
          ],
        ),
      ),
    );
  }


  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(65.0.h);
}
