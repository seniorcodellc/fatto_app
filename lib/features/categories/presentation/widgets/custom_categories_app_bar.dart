import 'package:fatto/core/utils/app_assets.dart';
import 'package:fatto/core/widgets/shared_back_arrow_button_icon_ios.dart';
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
          SharedBackArrowButtonIconIOS(),
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
