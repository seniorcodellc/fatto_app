import 'package:fatto/core/widgets/custom_padding.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class SharedListTitles extends StatelessWidget {
  const SharedListTitles({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return CustomPadding(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: AppStyles.font18Black),
          Text("SEE ALL", style: AppStyles.font10PrimaryColor),
        ],
      ),
    );
  }
}
