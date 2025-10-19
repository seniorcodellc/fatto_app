import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../categories/presentation/widgets/custom_categories_app_bar.dart';
import '../widgets/wishlist_body.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: CustomCategoriesAppBar(title: '  Wishlist '),
        body: CustomScrollView(
          slivers: [SliverToBoxAdapter(child: WishlistBody())],
        ),
      ),
    );
  }
}
