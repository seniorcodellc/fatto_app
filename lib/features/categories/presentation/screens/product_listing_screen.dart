import 'package:fatto/features/categories/presentation/widgets/custom_product_listing_app_bar.dart';
import 'package:fatto/features/categories/presentation/widgets/product_listing_body.dart';
import 'package:flutter/material.dart';

class ProductListingScreen extends StatelessWidget {
  const ProductListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomProductListingAppBar(),
        body: ProductListingBody(),
      ),
    );
  }
}
