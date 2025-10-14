import 'package:fatto/core/utils/app_assets.dart';
import 'package:fatto/core/utils/app_colors.dart';
import 'package:fatto/core/utils/app_styles.dart';
import 'package:fatto/core/widgets/custom_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPadding(
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: SvgPicture.asset(AppAssets.iconsSearch),
          ),
          prefixIconColor: AppColors.fontSubtitleColor,
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: SvgPicture.asset(AppAssets.iconsFilter),
          ),
          suffixIconColor: AppColors.fontSubtitleColor,
          hintText: "Search menu, restaurant or etc",
          hintStyle: AppStyles.font15Grey,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
        ),
      ),
    );
  }
}
