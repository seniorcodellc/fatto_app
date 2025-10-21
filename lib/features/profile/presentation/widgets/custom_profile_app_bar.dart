import 'package:fatto/core/utils/app_assets.dart';
import 'package:fatto/core/utils/app_colors.dart';
import 'package:fatto/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomProfileAppBar extends StatelessWidget {
  const CustomProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 134,
      decoration: BoxDecoration(color: AppColors.primaryColor),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 16,
          right: 16,
          bottom: 21,
        ),
        child: Row(
          children: [
            Image.asset(AppAssets.profileImage, width: 40, height: 40),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ahmed Raza",
                    style: AppStyles.font16Black.copyWith(
                      color: AppColors.fontWhiteColor,
                    ),
                  ),
                  Text(
                    "ahmedraza@gmail.com",
                    style: AppStyles.font14Black.copyWith(
                      color: AppColors.fontWhiteColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 98),
            IconButton(
              style: IconButton.styleFrom(fixedSize: Size(32, 32)),
              onPressed: () {
                Navigator.pushNamed(context, 'login_screen');
              },
              icon: SvgPicture.asset(AppAssets.iconsLogOut),
            ),
          ],
        ),
      ),
    );
  }
}
