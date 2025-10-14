import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_assets.dart';
import '../utils/app_colors.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: AppColors.fontWhiteColor,
      child: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: AppColors.fontSubtitleColor,
        selectedItemColor: AppColors.primaryColor,
        items: [
          BottomNavigationBarItem(
            backgroundColor: AppColors.fontWhiteColor,
            icon: SvgPicture.asset(
              AppAssets.iconsHomeFilled,
              width: 24,
              height: 24,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.fontWhiteColor,
            icon: SvgPicture.asset(
              AppAssets.iconsCategory,
              width: 24,
              height: 24,
            ),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.fontWhiteColor,
            icon: SvgPicture.asset(
              AppAssets.iconsMyCart,
              width: 24,
              height: 24,
            ),
            label: "My Cart",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.fontWhiteColor,
            icon: SvgPicture.asset(
              AppAssets.iconsWishlist,
              width: 24,
              height: 24,
            ),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.fontWhiteColor,
            icon: SvgPicture.asset(
              AppAssets.iconsProfile,
              width: 24,
              height: 24,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
