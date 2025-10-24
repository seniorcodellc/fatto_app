import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/utils/app_colors.dart';
import '../widgets/custom_shared_profile_app_bar.dart';
import '../widgets/faqs_body.dart';

class FAQsScreen extends StatelessWidget {
  const FAQsScreen({super.key});
  static const routeName = 'faqs_screen';
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: AppColors.fontWhiteColor),
    );
    return Scaffold(
      appBar: CustomSharedProfileAppBar(title: "FAQs"),
      body: CustomScrollView(slivers: [SliverToBoxAdapter(child: FAQsBody())]),
    );
  }
}
