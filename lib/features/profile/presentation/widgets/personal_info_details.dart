import 'package:fatto/core/utils/app_colors.dart';
import 'package:fatto/core/utils/app_styles.dart';
import 'package:fatto/core/widgets/h_line.dart';
import 'package:fatto/core/widgets/shared_back_arrow_button_icon_ios.dart';
import 'package:fatto/features/profile/data/static/profile_details_static.dart';
import 'package:fatto/features/profile/presentation/widgets/shared_front_arrow_button_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PersonalInfoDetails extends StatelessWidget {
  const PersonalInfoDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(ProfileDetailsStatic.personalInfoList.length, (
        index,
      ) {
        return Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  ProfileDetailsStatic.personalInfoList[index].preIcon!,
                  color: AppColors.fontSubtitleColor,
                ),
                SizedBox(width: 12),
                Text(
                  ProfileDetailsStatic.personalInfoList[index].title!,
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
