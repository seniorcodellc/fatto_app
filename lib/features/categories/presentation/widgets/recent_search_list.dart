import 'package:fatto/core/utils/app_assets.dart';
import 'package:fatto/core/utils/app_colors.dart';
import 'package:fatto/core/utils/app_styles.dart';
import 'package:fatto/core/widgets/h_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/statics/recent_search_static.dart';

class RecentSearchList extends StatelessWidget {
  const RecentSearchList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(RecentSearchStatic.recentSearchList.length, (
        index,
      ) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      RecentSearchStatic.recentSearchList[index],
                      style: AppStyles.font14Black,
                    ),
                    SvgPicture.asset(AppAssets.iconsSendSearch),
                  ],
                ),
              ),
              HLine(thickness: 2, color: AppColors.borderColor),
            ],
          ),
        );
      }),
    );
  }
}
