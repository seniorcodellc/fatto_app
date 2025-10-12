import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_assets.dart';
import '../utils/app_colors.dart';

class SharedIconButton extends StatelessWidget {
  const SharedIconButton({
    super.key,
    required this.iconSize,
    required this.onPressed,
    required this.iconPath,
    required this.width,
    required this.height,
  });
  final double iconSize;
  final void Function() onPressed;
  final String iconPath;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: AppColors.iconBgColor,
        iconSize: iconSize,
      ),
      onPressed: onPressed,
      icon: SvgPicture.asset(iconPath, width: width, height: height),
    );
  }
}
