import 'package:fatto/core/utils/app_assets.dart';
import 'package:fatto/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../home/presentation/widgets/offered_products_dots.dart';
import '../widgets/details_item.dart';
import '../widgets/product_details_app_bar.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});
  static const route = "product_details_screen";

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      extendBodyBehindAppBar: true,
      appBar: const ProductDetailsAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  AppAssets.productDetails,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 3,
                ),
                Positioned(
                  bottom: 0.03 * MediaQuery.of(context).size.height,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: OfferedProductsDots(),
                  ),
                ),
                // Positioned(top: (MediaQuery.of(context).size.height / 3) - 15, left: 0, right: 0,
                //   child: DetailsItem(),
                // ),
              ],
            ),
          ),
          SliverToBoxAdapter(child: DetailsItem(),)
        ],
      ),
    );
  }
}