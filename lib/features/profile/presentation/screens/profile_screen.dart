import 'package:fatto/core/utils/app_colors.dart';
import 'package:fatto/features/profile/presentation/widgets/custom_profile_app_bar.dart';
import 'package:fatto/features/profile/presentation/widgets/profile_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: AppColors.primaryColor),
    );

    return Scaffold(
      body: Stack(
        alignment: AlignmentGeometry.topCenter,
        children: [
          const CustomProfileAppBar(),
          Padding(
            padding: const EdgeInsets.only(top: 110),
            child: const ProfileDetails(),
          ),
        ],
      ),
    );
  }
}
