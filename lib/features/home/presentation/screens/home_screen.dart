import 'package:fatto/core/utils/app_colors.dart';
import 'package:fatto/core/widgets/app_bottom_navigation_bar.dart';
import 'package:fatto/features/home/presentation/widgets/home_body.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.fontWhiteColor,
        appBar: CustomHomeAppBar(),
        body: HomeBody(),
        bottomNavigationBar: AppBottomNavigationBar(),
      ),
    );
  }
}
