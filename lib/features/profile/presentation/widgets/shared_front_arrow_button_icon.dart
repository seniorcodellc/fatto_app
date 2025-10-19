import 'package:fatto/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_assets.dart';

class SharedFrontArrowButtonIcon extends StatelessWidget {
  SharedFrontArrowButtonIcon({super.key, required this.route});
  final String route;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        fixedSize: Size(32, 32),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(width: 0.6, color: AppColors.lightGrey),
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      icon: SvgPicture.asset(AppAssets.iconsFrontArrow, width: 6, height: 11),
    );
  }
}
