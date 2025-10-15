import 'package:fatto/core/widgets/custom_padding.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class SharedListTitles extends StatelessWidget {
  const SharedListTitles({super.key, required this.title, this.onTap});
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return CustomPadding(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: AppStyles.font18Black),
          GestureDetector(
            onTap: onTap,
            child: Text("SEE ALL", style: AppStyles.font10PrimaryColor),
          ),
        ],
      ),
    );
  }
}
