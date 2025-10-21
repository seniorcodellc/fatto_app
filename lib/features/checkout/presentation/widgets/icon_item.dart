import 'package:fatto/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
class IconItem extends StatelessWidget {
  const IconItem({super.key, required this.icon, required this.name, required this.isEnabled});
final String icon ;
final String name;
final bool isEnabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9.0.w),
      child: Column(
        children: [
          SvgPicture.asset(icon),
          Text(name,style:isEnabled ? AppStyles.font12Black : AppStyles.font12Grey,)
        ],
      ),
    );
  }
}
