import 'package:fatto/features/categories/presentation/widgets/filter_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/custom_button.dart';

class FilterIcon extends StatelessWidget {
  const FilterIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        Scaffold.of(context).showBottomSheet((BuildContext context) {
          return Container(
            width: double.infinity,
            height: 380,
            decoration: BoxDecoration(
              color: AppColors.fontWhiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Filter', style: AppStyles.font16Black),
                  FilterList(),
                  CustomButton(buttonText: 'Apply', onTap: () {}),
                ],
              ),
            ),
          );
        });
      },
      child: SvgPicture.asset(
        AppAssets.iconsSetting,
        color: AppColors.fontSubtitleColor,
      ),
    );
  }
}
