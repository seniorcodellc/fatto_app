import 'package:fatto/features/profile/presentation/widgets/shared_front_arrow_button_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/h_line.dart';
import '../../../../core/widgets/shared_back_arrow_button_icon_ios.dart';
import '../../data/static/profile_details_static.dart';

class SupportAndInfoDetails extends StatelessWidget {
  const SupportAndInfoDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(ProfileDetailsStatic.supportAndInfoList.length, (
        index,
      ) {
        return Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  ProfileDetailsStatic.supportAndInfoList[index].preIcon!,
                  color: AppColors.fontSubtitleColor,
                ),
                SizedBox(width: 12),
                Text(
                  ProfileDetailsStatic.supportAndInfoList[index].title!,
                  style: AppStyles.font14Black.copyWith(
                    color: AppColors.fontSubtitleColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(flex: 1),
                SharedFrontArrowButtonIcon(
                  route: ProfileDetailsStatic.personalInfoList[index].route!,
                ),
              ],
            ),
            HLine(thickness: 2, color: AppColors.borderColor),
          ],
        );
      }),
    );
  }
}
