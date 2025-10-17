import 'package:fatto/core/widgets/shared_back_arrow_button_icon_ios.dart';
import 'package:fatto/features/categories/presentation/widgets/shared_settings_and_search_icons.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_styles.dart';

class CustomProductListingAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomProductListingAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SharedBackArrowButtonIconIOS(),
          Text(title, style: AppStyles.font16Black),
          //SizedBox(width: 55),
          Row(
            children: [
              SharedSettingsAndSearchIcons(icon: AppAssets.iconsSetting),
              SizedBox(width: 12),
              SharedSettingsAndSearchIcons(icon: AppAssets.iconsSearch),
            ],
          ),
        ],
      ),
    );
    ;
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}
