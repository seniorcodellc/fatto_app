import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SharedIconButton extends StatelessWidget {
  const SharedIconButton({
    super.key,
    required this.onPressed,
    required this.iconPath,
    required this.width,
    required this.height,
    required this.size,
    required this.bgColor,
  });
  final void Function() onPressed;
  final String iconPath;
  final double width;
  final double height;
  final double size;
  final Color bgColor;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: bgColor,
        minimumSize: Size(size, size),
        maximumSize: Size(size, size),
      ),
      onPressed: onPressed,
      icon: SvgPicture.asset(iconPath, width: width, height: height),
    );
  }
}
