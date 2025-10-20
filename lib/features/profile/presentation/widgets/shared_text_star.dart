import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class SharedTextStar extends StatelessWidget {
  const SharedTextStar({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: AppStyles.font14Black),
        Text("*", style: TextStyle(color: Colors.red)),
      ],
    );
  }
}
