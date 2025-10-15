import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';

class CustomHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: AppColors.fontWhiteColor),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            style: IconButton.styleFrom(
              fixedSize: Size(28, 28),
              backgroundColor: AppColors.iconBgColor,
            ),
            onPressed: () {},
            icon: SvgPicture.asset(
              AppAssets.iconsMenu,
              width: 15.75,
              height: 10.5,
              color: AppColors.iconColor,
            ),
          ),
          Image.asset(AppAssets.homeAppBarLogo, width: 30.06, height: 47.65),
          SizedBox(
            width: 35,
            height: 35,
            child: CircleAvatar(
              backgroundImage: AssetImage(AppAssets.userImage),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(49);
}
