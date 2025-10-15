import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_assets.dart';
import '../utils/app_colors.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });
  final int selectedIndex;
  final void Function(int)? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: AppColors.fontWhiteColor,
      child: BottomNavigationBar(
        onTap: onTap,
        currentIndex: selectedIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: AppColors.fontSubtitleColor,
        selectedItemColor: AppColors.primaryColor,
        items: [
          BottomNavigationBarItem(
            backgroundColor: AppColors.fontWhiteColor,
            icon: SvgPicture.asset(
              selectedIndex == 0
                  ? AppAssets.iconsHomeFilled
                  : AppAssets.iconsHome,
              width: 24,
              height: 24,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.fontWhiteColor,
            icon: SvgPicture.asset(
              selectedIndex == 1
                  ? AppAssets.iconsCategoryFilled
                  : AppAssets.iconsCategory,
              width: 24,
              height: 24,
            ),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.fontWhiteColor,
            icon: SvgPicture.asset(
              selectedIndex == 2
                  ? AppAssets.iconsMyCartFilled
                  : AppAssets.iconsMyCart,
              width: 24,
              height: 24,
            ),
            label: "My Cart",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.fontWhiteColor,
            icon: SvgPicture.asset(
              selectedIndex == 3
                  ? AppAssets.iconsWishlistFilled
                  : AppAssets.iconsWishlist,
              width: 24,
              height: 24,
            ),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.fontWhiteColor,
            icon: SvgPicture.asset(
              selectedIndex == 4
                  ? AppAssets.iconsProfileFilled
                  : AppAssets.iconsProfile,
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
