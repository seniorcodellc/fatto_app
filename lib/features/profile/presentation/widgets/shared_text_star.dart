import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_styles.dart';

class SharedTextStar extends StatelessWidget {
  const SharedTextStar({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 12.0.h,bottom: 8,),
      child: Row(
        children: [
          Text(text, style: AppStyles.font14Black),
          Text("*", style: TextStyle(color: Colors.red)),
        ],
      ),
    );
  }
}
