import 'package:fatto/core/utils/app_assets.dart';
import 'package:fatto/core/utils/app_colors.dart';
import 'package:fatto/features/home/presentation/widgets/offered_products_slider.dart';
import 'package:fatto/features/home/presentation/widgets/products_list.dart';
import 'package:fatto/features/home/presentation/widgets/home_search_text_field.dart';
import 'package:flutter/material.dart';

import 'categories_list.dart';
import 'custom_home_app_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomHomeAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 20),
                HomeSearchTextField(),
                SizedBox(height: 20),
                OfferedProductsSlider(),
                SizedBox(height: 20),
                CategoriesList(),
                SizedBox(height: 14),
              ],
            ),
          ),
          SliverFillRemaining(child: ProductsList()),
        ],
      ),
    );
  }
}
