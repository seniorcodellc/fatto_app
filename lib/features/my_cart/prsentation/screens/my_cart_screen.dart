import 'package:fatto/features/categories/presentation/widgets/custom_categories_app_bar.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../widgets/my_cart_body.dart';
class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.bgColor,
        appBar: CustomCategoriesAppBar(title: '  My Cart '),
        body: CustomScrollView(
          slivers: [SliverToBoxAdapter(child: MyCartBody()),],
        ),
      ),
    );
  }
}
