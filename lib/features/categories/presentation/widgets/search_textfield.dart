import 'package:fatto/core/widgets/custom_button.dart';
import 'package:fatto/features/categories/presentation/widgets/filter_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class SearchTextfield extends StatelessWidget {
  SearchTextfield({super.key, this.onChanged});
  void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.borderColor,
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: SvgPicture.asset(
              AppAssets.iconsSearchNormal,
              color: AppColors.fontSubtitleColor,
            ),
          ),
          prefixIconColor: AppColors.fontSubtitleColor,
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: FilterIcon(),
          ),
          suffixIconColor: AppColors.fontSubtitleColor,
          hintText: "Search",
          hintStyle: AppStyles.font15Grey,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
