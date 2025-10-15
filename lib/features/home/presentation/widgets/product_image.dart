import 'package:fatto/core/utils/app_assets.dart';
import 'package:fatto/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.image, required this.isLiked});
  final String image;
  final bool isLiked;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Container(
          width: 180,
          height: 138,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 27,
            height: 27,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: isLiked
                  ? AppColors.primaryColor
                  : AppColors.fontTitleColor,
            ),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                AppAssets.iconsLike,
                width: 15,
                height: 15,
                color: AppColors.fontWhiteColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
