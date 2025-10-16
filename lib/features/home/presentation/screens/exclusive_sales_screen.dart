import 'package:flutter/material.dart';
import '../../../categories/presentation/widgets/custom_product_listing_app_bar.dart';
import '../../../categories/presentation/widgets/product_listing_body.dart';
class ExclusiveSalesScreen extends StatelessWidget {
  const ExclusiveSalesScreen({super.key});
  static final route = "sales_screen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomProductListingAppBar(title: 'Exclusive Sales',),
        body: ProductListingBody(),
      ),
    );
  }
}
