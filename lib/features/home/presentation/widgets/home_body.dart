import 'package:fatto/features/home/presentation/widgets/product_offer_container.dart';
import 'package:fatto/features/home/presentation/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

import 'categories_list.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Column(
        children: [
          SearchTextField(),
          SizedBox(height: 14),
          ProductOfferContainer(),
          SizedBox(height: 15),
          CategoriesList(),
        ],
      ),
    );
  }
}
