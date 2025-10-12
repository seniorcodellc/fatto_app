import 'package:fatto/features/home/presentation/widgets/home_body.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: CustomHomeAppBar(), body: HomeBody()),
    );
  }
}
