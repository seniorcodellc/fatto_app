import 'package:fatto/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_assets.dart';

class SharedBackArrowButtonIconIOS extends StatelessWidget {
  const SharedBackArrowButtonIconIOS({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        fixedSize: Size(48, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(width: 0.6,color: AppColors.lightGrey),
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
      icon: SvgPicture.asset(AppAssets.iconsBackArrowIos, width: 6, height: 11),
    );
  }
}
