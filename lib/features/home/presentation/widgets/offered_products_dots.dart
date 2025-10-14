import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';

class OfferedProductsDots extends StatelessWidget {
  OfferedProductsDots({super.key});

  final List<int> dotsNum = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 16,
      decoration: BoxDecoration(
        color: AppColors.borderColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(dotsNum.length, (index) {
          return Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: index == 0 ? AppColors.primaryColor : AppColors.dotsColor,
              borderRadius: BorderRadius.circular(8),
            ),
          );
        }),
      ),
    );
  }
}
