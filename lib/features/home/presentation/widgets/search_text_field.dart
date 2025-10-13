import 'package:fatto/core/utils/app_assets.dart';
import 'package:fatto/core/utils/app_colors.dart';
import 'package:fatto/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search, color: AppColors.fontSubtitleColor),
        prefixIconColor: AppColors.fontSubtitleColor,
        suffixIcon: Icon(
          Icons.filter_alt_outlined,
          color: AppColors.fontSubtitleColor,
        ),
        suffixIconColor: AppColors.fontSubtitleColor,
        hintText: "Search menu, restaurant or etc",
        hintStyle: AppStyles.font15Grey,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
      ),
    );
  }
}
