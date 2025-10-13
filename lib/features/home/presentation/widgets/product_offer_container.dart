import 'package:fatto/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class ProductOfferContainer extends StatelessWidget {
  const ProductOfferContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 148,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Image.asset(AppAssets.productOfferImage, fit: BoxFit.cover),
    );
  }
}
