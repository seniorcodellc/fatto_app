import 'package:fatto/core/utils/app_colors.dart';
import 'package:fatto/core/widgets/h_line.dart';
import 'package:fatto/features/categories/data/statics/filter_static.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_styles.dart';

class FilterList extends StatelessWidget {
  const FilterList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(FilterStatic.filterList.length, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(AppAssets.tick),
                  SizedBox(width: 12),
                  Text(
                    FilterStatic.filterList[index],
                    style: AppStyles.font14Black,
                  ),
                ],
              ),
              HLine(thickness: 2, color: AppColors.borderColor),
            ],
          ),
        );
      }),
    );
  }
}
