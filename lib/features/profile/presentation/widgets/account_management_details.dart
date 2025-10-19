import 'package:fatto/features/profile/presentation/widgets/shared_front_arrow_button_icon.dart';
import 'package:fatto/features/profile/presentation/widgets/theme_toggle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/h_line.dart';
import '../../data/static/profile_details_static.dart';

class AccountManagementDetails extends StatelessWidget {
  const AccountManagementDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        ProfileDetailsStatic.accountManagementList.length,
        (index) {
          return Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    ProfileDetailsStatic.accountManagementList[index].preIcon!,
                    color: AppColors.fontSubtitleColor,
                  ),
                  SizedBox(width: 12),
                  Text(
                    ProfileDetailsStatic.accountManagementList[index].title!,
                    style: AppStyles.font14Black.copyWith(
                      color: AppColors.fontSubtitleColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(flex: 1),
                  index == 0
                      ? SharedFrontArrowButtonIcon(
                          route:
                              ProfileDetailsStatic
                                  .accountManagementList[index]
                                  .route ??
                              "",
                        )
                      : ThemeToggle(),
                ],
              ),
              HLine(thickness: 2, color: AppColors.borderColor),
            ],
          );
        },
      ),
    );
  }
}
