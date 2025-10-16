
import 'package:flutter/material.dart';
import '../widgets/custom_categories_app_bar.dart';
import '../widgets/fashion_body.dart';

class FashionScreen extends StatelessWidget {
  const FashionScreen({super.key});
  static final route = "fashion_screen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomCategoriesAppBar(title: 'Fashion'),
        body: FashionBody(),
      ),
    );
  }
}

