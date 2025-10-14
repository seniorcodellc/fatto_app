import 'package:fatto/features/categories/presentation/widgets/custom_categories_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/categories_body.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: CustomCategoriesAppBar(), body: CategoriesBody()),
    );
  }
}
