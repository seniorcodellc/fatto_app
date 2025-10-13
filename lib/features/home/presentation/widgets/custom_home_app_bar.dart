import 'package:fatto/core/widgets/shared_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_assets.dart';

class CustomHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SharedIconButton(
            onPressed: () {},
            iconSize: 28,
            iconPath: AppAssets.iconsMenu,
            width: 21,
            height: 21,
          ),
          Image.asset(AppAssets.homeAppBarLogo, width: 31, height: 47),
          CircleAvatar(
            backgroundImage: AssetImage(AppAssets.userImage),
            radius: 35,
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(49);
}
