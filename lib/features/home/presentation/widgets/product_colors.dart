import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'colorfull_circle.dart';

class ProductColors extends StatelessWidget {
  const ProductColors({
    super.key,
    required this.bgColor2,
    required this.bgColor3,
    required this.num,
    required this.bgColor1,
  });
  final Color bgColor1;
  final Color bgColor2;
  final Color bgColor3;
  final int num;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            ColorfullCircle(bgColor: bgColor1),
            Positioned(left: 15, child: ColorfullCircle(bgColor: bgColor2)),
            Positioned(left: 28, child: ColorfullCircle(bgColor: bgColor3)),
          ],
        ),
        SizedBox(width: 44),
        Text(
          "All $num Colors",
          style: AppStyles.font10PrimaryColor.copyWith(
            color: AppColors.fontTitleColor,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }
}
