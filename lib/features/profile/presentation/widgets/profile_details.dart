import 'package:fatto/features/profile/presentation/widgets/account_management_details.dart';
import 'package:fatto/features/profile/presentation/widgets/personal_info_details.dart';
import 'package:fatto/features/profile/presentation/widgets/support_and_info_details.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.bgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 21),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Personal Information", style: AppStyles.font12Black),
                SizedBox(height: 12),
                PersonalInfoDetails(),
                Text("Support & Information", style: AppStyles.font12Black),
                SizedBox(height: 12),
                SupportAndInfoDetails(),
                Text("Account Management", style: AppStyles.font12Black),
                SizedBox(height: 12),
                AccountManagementDetails(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
