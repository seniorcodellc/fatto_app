import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';

class SharedSettingsAndSearchIcons extends StatelessWidget {
  const SharedSettingsAndSearchIcons({
    super.key,
    required this.icon,
    this.onPressed,
  });
  final String icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        fixedSize: Size(48, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(width: 0.1),
        ),
      ),
      onPressed: onPressed,
      icon: SvgPicture.asset(
        icon,
        width: 24,
        height: 24,
        color: AppColors.fontTitleColor,
      ),
    );
  }
}
