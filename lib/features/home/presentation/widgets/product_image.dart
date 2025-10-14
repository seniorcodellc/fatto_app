import 'package:fatto/core/utils/app_assets.dart';
import 'package:fatto/core/utils/app_colors.dart';
import 'package:fatto/core/widgets/shared_icon_button.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.image});
  final String image;
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
        SharedIconButton(
          onPressed: () {},
          iconPath: AppAssets.iconsLike,
          width: 12,
          height: 12,
          size: 28,
          bgColor: AppColors.primaryColor,
        ),
      ],
    );
  }
}
