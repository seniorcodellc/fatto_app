import 'package:fatto/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class CustomCategoriesAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomCategoriesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Row(
        children: [
          IconButton(
            style: IconButton.styleFrom(
              fixedSize: Size(48, 48),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(width: 0.1),
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset(
              AppAssets.iconsBackArrowIos,
              width: 6,
              height: 11,
            ),
          ),
          SizedBox(width: 85),
          Text(
            "Categories",
            style: AppStyles.font24White.copyWith(
              color: AppColors.fontTitleColor,
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}
