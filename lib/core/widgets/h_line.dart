import 'package:fatto/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HLine extends StatelessWidget {
  HLine({Key? key, this.verticalPadding, this.color, this.thickness,this.width})
      : super(key: key);
  double? verticalPadding;
  double? thickness;
  Color? color;
  double? width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalPadding ?? 10.h),
      child: Container(
        width: width?? double.infinity,
        height: thickness ?? 2,
        color: color ?? AppColors.borderColor,
      ),
    );
  }
}

class VLine extends StatelessWidget {
  const VLine({Key? key, this.color, this.thik, this.padd, this.height})
      : super(key: key);
  final Color? color;
  final double? thik;
  final double? padd;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padd ?? 10.h),
      child: Container(
        height: height ?? 32.h,
        width: thik ?? 2.w,
        color: color ?? AppColors.borderColor,
      ),
    );
  }
}
