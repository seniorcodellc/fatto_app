import 'package:fatto/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/shared_icon_button.dart';
class ProductDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProductDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 8.0.h,horizontal: 16.0.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){Get.off(HomeScreen());},
                child: SvgPicture.asset(AppAssets.iconsBackArrow)),
            SharedIconButton(
              onPressed: () {},
              iconPath: AppAssets.iconsLike,
              iconWidth: 18,
              iconHeight: 18,
              bgColor: AppColors.primaryColor,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.0.h);

}
