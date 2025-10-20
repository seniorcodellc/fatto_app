import 'package:fatto/core/utils/app_styles.dart';
import 'package:fatto/core/widgets/h_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';

class CustomSharedProfileAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomSharedProfileAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: SvgPicture.asset(AppAssets.iconsBackArrow),
              ),
              Text(title, style: AppStyles.font14Black),
            ],
          ),
          HLine(thickness: 1, color: AppColors.borderColor),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(80);
}
