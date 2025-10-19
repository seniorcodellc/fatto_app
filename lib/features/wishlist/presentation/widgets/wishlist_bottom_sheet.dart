import 'package:fatto/core/utils/app_colors.dart';
import 'package:fatto/core/widgets/custom_button.dart';
import 'package:fatto/features/wishlist/presentation/screens/wishlist_empty_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../core/utils/app_styles.dart';
import 'cancel_button.dart';

class WishlistBottomSheet extends StatelessWidget {
  const WishlistBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.bgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 40.0.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 18.0.w),
              child: Text('Delete product from wishlist',style: AppStyles.font16Black,),
            ),
            SizedBox(height: 28.0.h,),
            CustomButton(buttonText: "Delete (1) product", onTap: (){Get.to(WishlistEmptyScreen());}),
            SizedBox(height: 8.0.h,),
            CancelButton(),
          ],
        ),
      ),
    );
  }
}