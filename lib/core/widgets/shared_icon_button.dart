import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SharedIconButton extends StatelessWidget {
  const SharedIconButton({
    super.key,
    required this.onPressed,
    required this.iconPath,
    required this.iconWidth,
    required this.iconHeight,
    required this.bgColor,
  });
  final void Function() onPressed;
  final String iconPath;
  final double iconWidth;
  final double iconHeight;
  final Color bgColor;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: bgColor,
        minimumSize: Size(28, 28),
        maximumSize: Size(28, 28),
      ),
      onPressed: onPressed,
      icon: SvgPicture.asset(iconPath, width: iconWidth, height: iconHeight),
    );
  }
}
