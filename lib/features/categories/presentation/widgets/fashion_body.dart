import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';
import '../../data/statics/fashion_statics.dart';
class FashionBody extends StatelessWidget {
  const FashionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      crossAxisCount: 2,
      childAspectRatio: 0.9,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      children: List.generate(FashionStatics.fashionList.length, (index) {
        final productsModel = FashionStatics.fashionList[index];
        return Column(
          children: [
            Expanded(
              child: Image.asset(
                productsModel.productImage,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              productsModel.productName,
              style: AppStyles.font14Black,
            ),
          ],
        );
      }),
    );
  }
}