import 'package:fatto/features/wishlist/presentation/widgets/wishlist_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../product_details/presentation/widgets/quantity_widget.dart';
import '../../data/models/wishlist_item_model.dart';
class WishlistItem extends StatelessWidget {
  const WishlistItem({super.key, required this.wishlistModel, required this.isLiked});
  final WishlistModel wishlistModel;
  final bool isLiked;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.0.w,vertical: 10.0.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 130.w,
            height: 140.h,
            child: Image.asset(
              wishlistModel.imagePath,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        wishlistModel.name,
                        style: AppStyles.font14Black,
                      ),
                    ),
                    isLiked ? SvgPicture.asset(wishlistModel.icon) : SizedBox(),
                  ],
                ),
                SizedBox(height: 8.h),
                Text(wishlistModel.price, style: AppStyles.font12Black),
                Text(wishlistModel.salePrice, style: AppStyles.font12Grey.copyWith(
                  decoration: TextDecoration.lineThrough,
                )),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    QuantityWidget(),
                    GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context) => const WishlistBottomSheet(),
                          );
                        },
                        child: SvgPicture.asset(AppAssets.iconsTrash)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
